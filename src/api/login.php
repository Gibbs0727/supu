<?php
	//作用:接收前端登录时传过来的数据,如果能够匹配到数据库的用户信息,将结果返回前端.POST方式
	
	//连接数据库
   	include 'connect.php';
	//接收数据
	$name=isset($_POST['username'])?$_POST['username'] :'' ;
	$psw=isset($_POST['password'])?$_POST['password'] :'' ;
	
	//写查询语句
	$sql="SELECT * FROM usermessage WHERE username='$name' and password='$psw'";
	
	//执行：内部编译
	$res=$conn->query($sql);//结果集
	// var_dump($res);
		
	if($res->num_rows>0){
		echo 'yes';//用户名密码都正确，可以登陆
	}else{
		echo 'no';//不正确，不可以登陆
	}
	

?>