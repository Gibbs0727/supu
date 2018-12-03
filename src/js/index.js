/* 
 * @Author: Marte
 * @Date:   2018-11-28 16:19:33
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-12-02 21:28:29
 */

$(function() {

    /*
        步骤：一定要掌握的版本
            1.把所有的图片放在右侧，第一个图片放到可视区
            2.开定时器：每次轮播一个图
            3.焦点跟随
            4.点击上下按钮可以切图
            5.点击焦点可以跳转

     */

    //1.把所有的图片放在右侧，第一个图片放到可视区
    //获取图片宽度
    var iW = $('#imglist li').eq(0).outerWidth(); //JS offsetwidth

    $('#imglist li').css('left', iW);
    $('#imglist li').eq(0).css('left', 0);


    //2.开定时器：每次轮播一个图
    var timer = null;
    clearInterval(timer);
    var now = 0;

    timer = setInterval(next, 2000); //每隔2秒钟切换一个图

    function next() {
        //旧的挪走
        $('#imglist li').eq(now).animate({
            'left': -iW
        }, 1000);
        now = ++now >= $('#imglist li').size() ? 0 : now;
        //新的快速放在右侧，再挪进可视区
        $('#imglist li').eq(now).css('left', iW);
        $('#imglist li').eq(now).animate({
            'left': 0
        }, 1000);
        light();
    }

    //3.焦点跟随
    function light() {
        $('#light span').removeClass('active');
        $('#light span').eq(now).addClass('active');
    }

    function prev() {
        //从左侧切入到可视区
        //旧的挪到右侧
        $('#imglist li').eq(now).animate({
            'left': iW
        }, 1000);
        //新的
        now = --now < 0 ? $('#imglist li').size() - 1 : now;
        $('#imglist li').eq(now).css('left', -iW);
        $('#imglist li').eq(now).animate({
            'left': 0
        }, 1000);
        light();
    }

    //4.点击上下按钮可以切图:如果是渲染出来的数据，记得用事件委托来绑定

    //鼠标经过停止，鼠标离开继续运动
    $('#box').hover(function() {
        clearInterval(timer);
    }, function() {
        clearInterval(timer);
        timer = setInterval(next, 2000);
    });

    //点击切换到上一张
    $('#prev').click(function() {
        prev();
    });

    //点击切换到下一张
    $('#next').click(function() {
        //下一张
        next();
    });

    //5.点击焦点可以跳转

    $('#light span').click(function() {
        //旧 ：now
        //新：index() 新的
        var index = $(this).index();
        if (index > now) {
            //从右边切入
            //旧 now：挪到左边
            $('#imglist li').eq(now).animate({
                'left': -iW
            }, 1000);
            //新的
            $('#imglist li').eq(index).css('left', iW);
            $('#imglist li').eq(index).animate({
                'left': 0
            }, 1000);
            now = index; //最新的一张变成index

        }
        if (index < now) {
            //从左边切入
            //旧 now：挪到左边
            $('#imglist li').eq(now).animate({
                'left': iW
            }, 1000);
            //新的
            $('#imglist li').eq(index).css('left', -iW);
            $('#imglist li').eq(index).animate({
                'left': 0
            }, 1000);
            now = index; //最新的一张变成index
        }

        light();
    });


    //楼层小轮播图

    //1.把所有的图片放在右侧，第一个图片放到可视区
    //获取图片宽度
    var iW1 = $('.imglist1 li').eq(0).outerWidth(); //JS offsetwidth

    $('.imglist1 li').css('left', iW1);
    $('.imglist1 li').eq(0).css('left', 0);


    //2.开定时器：每次轮播一个图
    var timer1 = null;
    clearInterval(timer1);
    var now1 = 0;

    timer1 = setInterval(next1, 2000); //每隔2秒钟切换一个图

    function next1() {
        //旧的挪走
        $('.imglist1 li').eq(now1).animate({
            'left': -iW1
        }, 1000);
        // console.log(now1);
        now1 = ++now1 >= $('.imglist1 li').size() ? 0 : now1;
        //新的快速放在右侧，再挪进可视区
        // console.log(now1,$('#imglist1 li'));
        $('.imglist1 li').eq(now1).css('left', iW1);
        $('.imglist1 li').eq(now1).animate({
            'left': 0
        }, 1000);
    }

    //3.焦点跟随
    function prev1() {
        //从左侧切入到可视区
        //旧的挪到右侧
        $('.imglist1 li').eq(now1).animate({
            'left': iW1
        }, 1000);
        //新的
        now1 = --now1 < 0 ? $('.imglist li').size() - 1 : now1;
        $('.imglist1 li').eq(now1).css('left', -iW1);
        $('.imglist1 li').eq(now1).animate({
            'left': 0
        }, 1000);
    }

    //4.点击上下按钮可以切图:如果是渲染出来的数据，记得用事件委托来绑定

    //鼠标经过停止，鼠标离开继续运动
    $('.box1').hover(function() {
        clearInterval(timer1);
    }, function() {
        clearInterval(timer1);
        timer1 = setInterval(next1, 2000);
    });

    //点击切换到上一张
    $('.prev1').click(function() {
        prev1();
    });

    //点击切换到下一张
    $('.next1').click(function() {
        //下一张
        next1();
    });



    //点击注册按钮跳到注册页
    // var freeReg=document.querySelector('#freeReg');
    // freeReg.onclick=function(){
    //     location.href='html/reglog.html';
    // }



    //获取cookies里面的名字
    var username = Cookie.get('username');
    //console.log(username);
    $('.mainName').html(username);

    //退出
    $('.mainBack').click(function() {
        location.href = 'html/reglog.html';
    });


    //点击侧边栏跳到列表页
    $('.navMenu').click(function() {
        location.href = 'html/list.html';
        Cookie.set('username', Cookie.get('username'), {
            path: "/"
        });

    });

    //点击跳转套购物车
    $('.navTwor').click(function() {
        //console.log('aaa');
        Cookie.set('username', Cookie.get('username'), {
            path: "/"
        });
        location.href = 'html/cart.html';
    });

    //回到顶部（缓慢）
    var toTop = document.querySelector('.toTop');
    toTop.onclick = function() {
        // var scrollTop = document.body.scrollTop || document.documentElement.scrollTop;
        //点击缓慢回到顶部
        var scrollTop = window.setInterval(function() {
            //pageYOffset获取窗口离上面的距离
            console.log(window.pageYOffset + ':' + scrollTop);
            var pop = window.pageYOffset;
            if (pop > 0) {
                window.scrollTo(0, pop - 20);
            } else {
                window.clearInterval(scrollTop);
            }
        }, 20);
    }






});