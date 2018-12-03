<?php
	//作用:接收前端传过来的用户名,验证数据库是否存在该用户名,返回相关信息给前端.
	
	//链接数据库
	include 'connect.php';
	
	//接收前端传过来的用户名的信息，前端用GET方法传
	$name=isset($_GET['username'])?$_GET['username'] : '';
	//echo $name;//一定要检测前端是否成功传输局过来才进行下面的.
	
	//写查询语句
	$sql="select * from usermessage where username='$name'";
	
	//执行语句
	$res=$conn->query($sql);//得到结果集
	//var_dump($res); //检测结果集.
	
	//num_rows存记录的条数.所有超过0就意味着存在
	if($res->num_rows>0){
		echo 0;//存在
	}else{
		echo 1;//不存在
	}
	
	//关闭结果集和数据库
	$res->close();
	$conn->close();
	
	
?>