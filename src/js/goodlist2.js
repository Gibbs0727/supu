$(document).ready(function() {

    var priceDown = document.querySelector('#priceDown');
    var list = document.querySelector('#mainTworc');
    var page = document.querySelector('#page');
    var prev = document.querySelector('#prevpage');
    var next = document.querySelector('#nextpage');
    var rows = 0;

    function creat(arr) { //数据渲染函数封装
        var res = arr.datalist.map(function(item) {
            var imgsrc = item.bigimg.split("-")[0];
            return `<div class="mainTwors" data-id="${item.gid}">
                                    <img class="mainTworsimg" src="${imgsrc}" alt="" />
                                    <p>
                                        <span>满99立减20/</span>
                                        <span>${item.goodname}</span>
                                    </p>
                                    <p>
                                        <span>￥${item.price}</span>
                                        <span><del>￥${item.delprice}</del></span>
                                        <span>满额立减</span>
                                    </p>
                                    <div class="mainNum">
                                        <span>
                                            <input type="text" value="1" />
                                            <a href="javascript:;">+</a>
                                            <a href="javascript:;">-</a>
                                        </span>
                                        <span>加入购物车</span>
                                        <span>收藏</span>
                                    </div>   
                                </div>`;
        }).join('');

        list.innerHTML = res;
    }
    priceDown.onclick = function() {



        //1.创建对象
        var xhr = new XMLHttpRequest();
        var url = `../api/priceSort.php?page=1&qty=24&time=new Date()`;
        xhr.open('GET', url, true);

        //2.发送请求
        xhr.send();

        //3.后台接口制作

        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var str = xhr.responseText;
                // console.log(str);
                var arr = JSON.parse(str);
                // console.log(arr);

                //数据渲染：数据
                creat(arr);

                //根据数据总长度，创建页码
                var num = Math.ceil(arr.total / arr.qty);
                rows = num; //总页数

                for (var i = 0; i < num; i++) {
                    page.innerHTML += `<a href="javascript:;">${i+1}</a>`;
                }

                // page.children[0].className = 'active';

                //判断是否需要显示上一页，下一页
                if (num >= 2) {
                    prev.style.display = 'block';
                    next.style.display = 'block';
                }
            }
        }
    }

    //5.利用事件委托绑定事件
    var now = 1;

    page.onclick = function(ev) {
        var ev = ev || window.event;
        //点哪个是哪个
        if (ev.target.tagName.toLowerCase() == 'a') {
            //ev.target  等同  this
            now = (ev.target.innerText)*1; //获取页码
            //设置参数
            var url = `../api/01goodlist.php?page=${now}&qty=24&time=new Date()`;
            xhr.open('GET', url, true);
            xhr.send();
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var str = xhr.responseText;
                    var arr = JSON.parse(str);
                    //console.log(arr);
                         
                    creat(arr); //渲染数据

                    //清空
                    for (var i = 0; i < page.children.length; i++) {
                        page.children[i].className = '';
                    }
                    page.children[now - 1].className = 'active';
                }
            }
        }

    }


    //6.至少有两页，才出现，如果已经是第一页：prev隐藏；如果是最后一页了，next隐藏

    prev.onclick = function() {
        now--;
        if (now <= 1) {
            now = 1; //最小第一页
        }
        var url = `../api/01goodlist.php?page=${now}&qty=24&time=new Date()`;
        xhr.open('GET', url, true);
        xhr.send();
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var str = xhr.responseText;
                var arr = JSON.parse(str);
                creat(arr); //渲染数据

                //清空
                for (var i = 0; i < page.children.length; i++) {
                    page.children[i].className = '';
                }
                page.children[now - 1].className = 'active';
            }
        }
    }

    next.onclick = function() {
        now++;
        if (now >= rows) {
            now = rows; //最大就是最后一页
        }
        var url = `../api/01goodlist.php?page=${now}&qty=24&time=new Date()`;
        xhr.open('GET', url, true);
        xhr.send();
        xhr.onreadystatechange = function() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var str = xhr.responseText;
                var arr = JSON.parse(str);
                creat(arr); //渲染数据

                //清空
                for (var i = 0; i < page.children.length; i++) {
                    page.children[i].className = '';
                }
                page.children[now - 1].className = 'active';
            }
        }
    }


});