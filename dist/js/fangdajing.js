"use strict";$(document).ready(function(){$("#mainTwolpic").on("mouseover",".mask",function(){$(".float_layer").show(),$(".big_box").show()}),$("#mainTwolpic").on("mouseout",".mask",function(){$(".float_layer").hide(),$(".big_box").hide()}),$("#mainTwolpic").on("mousemove",".mask",function(t){var i=t.pageX-$(".small_box").offset().left-$(".float_layer").width()/2,o=t.pageY-$(".small_box").offset().top-$(".float_layer").height()/2;i<0&&(i=0),i>$(this).width()-$(".float_layer").width()&&(i=$(this).width()-$(".float_layer").width()),o<0&&(o=0),o>$(this).height()-$(".float_layer").height()&&(o=$(this).height()-$(".float_layer").height()),$(".float_layer").css({left:i,top:o});var a=i/($(".mask").width()-$(".float_layer").width()),e=o/($(".mask").height()-$(".float_layer").height());$(".big_box img").css({left:-a*($(".big_box img").width()-$(".big_box").width()),top:-e*($(".big_box img").height()-$(".big_box").height())})})});