/* 
* @Author: Marte
* @Date:   2018-11-21 20:06:50
* @Last Modified by:   Marte
* @Last Modified time: 2018-11-30 13:55:42
*/

$(function(){
    /*
    登录注册页：
        功能：*点击登录注册，轮播图切换到对应的页面，相关标题改变。
     */
    
//一、轮播图功能
//1.把所有的图片放在右侧，第一个图片放到可视区
var iW=$('#regloglist li').eq(0).outerWidth();//获取li宽度
$('#regloglist li').css('left',iW);//所有的图片放在有侧
$('#regloglist li').eq(0).css('left',0);//第一个图放在可视区
var now=0;

//切换注册或者登陆功能
    function prev(){
        //从左侧切入到可视区
        //旧的挪到右侧
        $('#regloglist li').eq(now).animate({'left':iW},500);
        //新的
        now=--now<0?$('#regloglist li').size()-1:now;
        $('#regloglist li').eq(now).css('left',-iW);
        $('#regloglist li').eq(now).animate({'left':0},500);
    }

//点击切换到登录
    $('#login').click(function(){
        prev();
        $('#biaoti').html('欢迎登录');
    });
//点击切换到注册
    $('#reg').click(function(){
        prev();
        $('#biaoti').html('欢迎注册');
    });

//二、拖动滑块解锁
    var box = document.getElementById('box');
    var gun = document.getElementById('gun');
    var color =document.getElementById('color');
    gun.onmousedown = function(ev) {
        var ev = ev || window.event;
        var t = ev.clientX - gun.offsetLeft;
        document.onmousemove = function(ev) {
            var ev = ev || window.event;        
            var run = ev.clientX - t;
            if(run>=247){
                run=247;
                gun.innerHTML = '√';
                gun.style.color='#A6E69A';
                color.innerHTML = '验证通过';
                document.onmousemove = null;
            }
            if(run<=0){
                run=0;
            }
            gun.style.left = run + 'px';
            color.style.width = gun.offsetLeft+'px';
        }
        document.onmouseup = function() {
            if(gun.offsetLeft<247){
                gun.style.left = 0+'px';
                color.style.width = gun.offsetLeft+'px';
            }
            document.onmousemove = null;
        }
    }


//生成随机验证码和颜色
var yanzhengma=document.getElementById('yanzhengma');
var arr='1234567890ABCDEF';
var num='1234567890QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm';//字符串

//点击改变
yanzhengma.onclick=function(){
    var color=Color();
    yanzhengma.style.backgroundColor=color;
    var oCode=code();//函数
    yanzhengma.innerHTML=oCode;//在div里显示；
}

function Color(){
    var res='#';
    for(var i=0;i<6;i++){
    res+=arr.charAt(Math.floor(Math.random()*arr.length));
    }
    return res;
}

function code(str){
    var res='';//创建新的空字符串
    for(var i=0;i<4;i++){
        res+=num.charAt(Math.floor(Math.random()*num.length));//cahrAt()获取下标为（）的字符；
    // res+=num[Math.floor(Math.random()*num.length)]+' ';//字符串长度
    }
    return res;
}

//验证&注册
//获取节点
var regmes=document.querySelector('#regmes');//信息提示
var regpsw=document.querySelector('#regpsw');//注册密码
var regname=document.querySelector('#regname');//注册名
var yanzheng=document.querySelector('#yanzheng');//验证密码
var regBtn=document.querySelector('#regBtn');
//验证名字
    regname.onblur=function(){
        var reg1=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        var reg2=/^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
        var val=regname.value.trim();
        if( reg1.test(val) || reg2.test(val) ){
            var url='../api/checkname.php';
            var data=`username=${val}&time=${new Date()}`;
            ajax('GET',url,data,function(str){
                console.log(str); //查询是否在PHP传回数据。传回字符串
                if(str == "1"){
                    regmes.innerHTML='该用户名可注册';
                    regmes.style.color='green';//可注册字体显示绿色
                }else{
                    regmes.innerHTML='该用户名已被注册';
                    regmes.style.color='red';//不可注册字体红色
                }
            });
        }else{
            regmes.innerHTML='请输入正确的电话号码或邮箱';
            regmes.style.color='red';//不可注册字体红色
        }  
    }

//注册
    regBtn.onclick=function(){
        var val=regname.value.trim();
        var psw=regpsw.value.trim();
        var check=yanzheng.value.trim();
        var yzCode=yanzhengma.innerHTML;

        if(val&&psw){
            if(check == yzCode){
                var url='../api/register.php';
                var data=`username=${val}&password=${psw}&time=${new Date()}`;
                ajax('POST',url,data,function(str){
                    //console.log(str);//获取后台返回信息,字符串
                    if(str == 'yes'){
                        alert('注册成功');
                    }else{
                        alert('注册失败');
                    }
                    //提示注册成功或者注册失败信息。
                    //每次注册完就清空名字和密码信息。
                    regname.value='';
                    regpsw.value='';
                    yanzheng.value='';
                    regmes.innerHTML='';
                });
            }else{
                regmes.innerHTML='您输入的验证码有误';
            }        
        }else{
            regmes.innerHTML='请输入用户用户信息和密码';
        }
    }


//登录
//获取节点
var logmes=document.querySelector('#logmes');//信息提示
var logpsw=document.querySelector('#logpsw');//登录密码
var logname=document.querySelector('#logname');//登录名
var logBtn=document.querySelector('#logBtn');//登录按钮

logBtn.onclick=function(){
    var name=logname.value.trim();
    var psw=logpsw.value.trim();
    var url='../api/login.php';
    var data=`username=${name}&password=${psw}&time=${new Date()}`;               
    if(name && psw){
        ajax('POST',url,data,function(str){
        console.log(str);//获取后台返回信息,字符串
        //yes ：可以登陆，跳转到首页，并且传用户名过去
            if(str == 'yes'){
                Cookie.set('username',name,{path:"/"});
                location.href='../main.html';
            }else{
                alert('用户名或密码有误')
            }        
        });
    }               
}














})
