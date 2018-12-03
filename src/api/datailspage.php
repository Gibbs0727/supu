<?php
    //详情页的渲染，前端传某个商品的id过来，用GET方法传。
    
    //连接数据库
    include 'connect.php';//相当于复制connect.php的文件内容过这里

    //接收参数
    $id=isset($_GET['gid'])? $_GET['gid'] : '';
    //echo $id;

    //写查询语句
    $sql="SELECT * FROM goodlist WHERE gid=$id ";

    //执行语句：得到结果集
    $res=$conn->query($sql);

    //获取内容部分
    $data=$res->fetch_all(MYSQLI_ASSOC);//得到对应id的商品全部的信息（数组）（包括id，名称，价格等信息）
    //var_dump($data);//检测是否得到对应id的数组。
    
    //将该id对应的数据库数组转成字符串传给前端
    echo json_encode($data,JSON_UNESCAPED_UNICODE);

    $res->close();//关掉结果集
    $conn->close();//断开连接

?>