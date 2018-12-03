<?php
	/*
		接收前段传过来的用户名和密码，将两个数据传到数据表里。
	*/
   
   //连接数据库
   include 'connect.php';
   
	//接受网页传过来的姓名和密码,用post方法传送
	$name=isset($_POST['username'])?$_POST['username'] : '';
	$psw=isset($_POST['password'])?$_POST['password'] : '';
	//echo $username;检测是否成功接收名字
	//echo $password;检测是否成功接收密码
	
	//写sql插入数据表语句
	$sql="INSERT INTO usermessage(USERNAME,PASSWORD) VALUES('$name','$psw')";
	
	//执行语句
	$res=$conn->query($sql);//得到结果集
	
	if($res){
		echo 'yes';//成功返回yes
	}else{
		echo 'no';//失败返回no
	}
	
	//关闭数据库
	$conn->close();
	
	

?>