document.addEventListener('DOMContentLoaded', function() {
	/*
	 * ajax连接接口，获取数据库的数据，进行渲染
	 * 根据数据的长度计算，创建翻页节点
	 * 点击翻页可以跳转到对应数据
	 * 增加上一页下一页
	 */
	var list = document.querySelector('#mainTworc');
	var page = document.querySelector('#page');
	var prev = document.querySelector('#prevpage');
	var next = document.querySelector('#nextpage');

	var rows = 0;
	//初始化数据

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
                                        <input type="text" value="1" class="listNums" />
                                        <a href="javascript:;" class="addlistNums">+</a>
                                        <a href="javascript:;" class="cutlistNums">-</a>
                                    </span>
                                    <span class="addlistCart">加入购物车</span>
                                    <span>收藏</span>
                                </div>   
                            </div>`;
		}).join('');

		list.innerHTML = res;
	}

	//1.创建对象
	var xhr = new XMLHttpRequest();
	var url = `../api/01goodlist.php?page=1&qty=24&time=new Date()`;
	xhr.open('GET', url, true);

	//2.发送请求
	xhr.send();

	//3.后台接口制作

	//4.接收数据做渲染
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && xhr.status == 200) {
			var str = xhr.responseText;
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


	//5.利用事件委托绑定事件
	var now = 1;

	page.onclick = function(ev) {

		var ev = ev || window.event;
		//点哪个是哪个
		if (ev.target.tagName.toLowerCase() == 'a') {
			//ev.target  等同  this
			now = ev.target.innerText; //获取页码
			//console.log(now);
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
					// for (var i = 0; i < page.children.length; i++) {
					// 	page.children[i].className = '';
					// }
					// page.children[now - 1].className = 'active';
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
				//console.log(str);
				var arr = JSON.parse(str);
				creat(arr); //渲染数据

				// //清空
				// for (var i = 0; i < page.children.length; i++) {
				// 	page.children[i].className = '';
				// }
				// page.children[now - 1].className = 'active';
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

				// //清空
				// for (var i = 0; i < page.children.length; i++) {
				// 	page.children[i].className = '';
				// }
				// page.children[now - 1].className = 'active';
			}
		}
	}



	//加减数量
	$("#mainTworc").on("click", ".addlistNums", function() {
		// console.log('aaaaaa');
		var val = $(this).prev().val();
		//console.log(val);
		val++;
		if (val >= 100) { //设置最大的输入数量
			val = 100;
		}
		$(this).prev().val(val); //在框写入加1之后的值。
	});

	$("#mainTworc").on("click", ".cutlistNums", function() {
		//console.log('aaaaaa');
		var val = $(this).prev().prev().val();
		//console.log(val);
		val--;
		if (val <= 1) { //设置最小的输入数量
			val = 1;
		}
		$(this).prev().prev().val(val); //在框写入加1之后的值。
	});

	//购物车按钮变色
	$('#mainTworc').on('mouseover', '.addlistCart', function() {
		//console.log('aa');
		$('#mainTworc .addlistCart').css('background', '#F6F6F6');
		$('#mainTworc .addlistCart').css('color', '#666666');
		$(this).css('background', '#E5004A');
		$(this).css('color', '#FFFFFF');

	})

	//加入购物车
	$('#mainTworc').on('click', '.addlistCart', function() {
		var gid = $(this).parent().parent().attr('data-id');
		//console.log(gid);
		var nums = $('.listNums').val();
		var uid = Cookie.get('username');
		//console.log(nums);
		url = '../api/insertGood.php';
		data3 = `gid=${gid} &nums=${nums} &uid=${uid} &time=new Date()`;
		ajax('GET', url, data3, function(str) {
			console.log(str);

		})
	});

	//获取cookies里面的名字
	var username = Cookie.get('username');
	//console.log(username);
	$('.listName').html(username);

	//退出
	$('.listBack').click(function() {
		location.href = 'reglog.html';
	});


	//点击购物车，跳转到购物车
	$('.navTwor').click(function() {
		Cookie.set('username', Cookie.get('username'), {
			path: "/"
		});
		location.href = 'cart.html';
	})

	//页面跳转：
	//点击每个列表页的商品，跳转到详情页并且瓷二代一个data-id
	$(".mainTworc").on("click", "img", function() {
		var gid = $(this).parent().attr("data-id");
		Cookie.set('username', Cookie.get('username'), {
			path: "/"
		});
		location.href = 'details.html?id=' + gid;
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