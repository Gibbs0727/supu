/* 
 * @Author: Marte
 * @Date:   2018-11-29 12:41:37
 * @Last Modified by:   Marte
 * @Last Modified time: 2018-12-02 20:49:08
 */

$(document).ready(function() {

  /*
             需求：
             
                 1、点击选项卡，内容跟着切换。
                     * 上面：点击哪个哪个变成高亮.this
                     *   className可以添加类名
                     * 
                     * 下面：点击上面的栏目，下面内容跟着切换
          */

  //主要内容的选项卡 给所有的mainThrrbCon绑定点击事件
  $('.mainThrrbCon').click(function() {
    $('.mainThrrbCon').attr('class', 'mainThrrbCon '); //第一，给每个input清空属性
    $(this).attr('class', 'mainThrrbCon mainThrrbActive'); //点击属性高亮
    $('.mainThrrz').css('display', 'none'); //给每个.con清空样式
    $('.mainThrrz').eq($(this).index()).css('display', 'block'); //提示对应的盒子。
  });



  //颜色选择
  $('.mainTwotasteAct').click(function() {
    $(this).siblings().css("border-color", "#ccc");
    $(this).css('border-color', 'orange');
  });


  var mainTwolpic = document.querySelector('#mainTwolpic');
  var mainTworsale = document.querySelector('#mainTworsale');
  var mainTwors = document.querySelector('.mainTwors');
  //接收前段传过来的gid
  var data = decodeURI(location.search);
  //console.log(data);
  var str = data.slice(1);
  //console.log(str);
  var gid = str.slice(3);
  //console.log(gid);
  url = '../api/datailspage.php';
  data2 = `gid=${gid}&time=new Date()`;
  ajax('GET', url, data2, function(str) {
    // console.log(str);
    var arr = JSON.parse(str);
    //console.log(arr);

    //数据渲染
    var res1 = arr.map(function(item) {
      var imgsrc = item.bigimg.split("-")[0];
      return `<div class="small_box">
                                <span class="mask"></span>
                                <span class="float_layer"></span>
                                <img src="${imgsrc}">
                            </div>
                            <div class="big_box">
                                <img src="${imgsrc}">
                            </div>`
    }).join('');
    mainTwolpic.innerHTML = res1;

    var res2 = arr.map(function(item) {
      return `<p>速普自营仓发货</p>
                        <p>
                            <span>满99立减20</span>
                            <span data-id=${item.gid} class="goodtitle">${item.goodname}</span>
                        </p>`
    }).join('');
    mainTwors.innerHTML = res2;

    var res3 = arr.map(function(item) {
      return `<p><span>速普价格</span><span>￥</span><span>${item.price}</span></p>
                            <div><span>市场价</span><span><del>￥${item.delprice}</del>（为您节省：7元）</span></div>
                            <p><span>促销</span><img src="../img/details/manjian.png" alt="" /><span>贝亲满99立减20</span></p>`
    }).join('');
    mainTworsale.innerHTML = res3;

  })


  //数量加减
  $('.p1').click(function() {
    var val = $(this).next().val(); //点击相应的加号按钮，在前面的框
    val++;
    if (val >= 100) { //设置最大的输入数量
      val = 100;
    }
    $(this).next().val(val); //在addunm前面的框写入加1之后的值。
  })

  $('.p2').click(function() {
    var val = $(this).prev().val(); //点击相应的加号按钮，在前面的框
    val--;
    if (val <= 1) { //设置最小的输入数量
      val = 1;
    }

    $(this).prev().val(val); //在addunm前面的框写入减1之后的值。
  })

  //加入购物车
  $('.addCart').click(function() {
    var gid = $('.goodtitle').attr('data-id');
    //console.log(gid);
    var nums = $('#buyNum').val();
    //console.log(nums);
    var uid = Cookie.get('username');
    //console.log(uid);
    url = '../api/insertGood.php';
    data3 = `gid=${gid} & nums=${nums} & uid=${uid} & time=new Date()`;
    ajax('GET', url, data3, function(str) {
      console.log(str);
      //   // var arr = JSON.parse(str);
      //   // console.log(arr);
    });
  })

  //获取cookies里面的名字
  var username = Cookie.get('username');
  //console.log(username);
  $('.detailsName').html(username);

  //退出
  $('.detailsBack').click(function() {
    location.href = 'reglog.html';
  });



  //点击跳转到购物车
  $('.navTwor').click(function() {
    //console.log('aaa');
    Cookie.set('username', Cookie.get('username'), {
      path: "/"
    });
    location.href = 'cart.html';
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