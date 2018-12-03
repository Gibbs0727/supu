<?php  
    include "connect.php";

    //获取数据
    $gid = isset($_GET["gid"]) ? $_GET["gid"] : 1;

    //sql语句 查询当前ID下的商品信息
    $sql = "select * from goodlist where gid = $gid";

    // 获取结果集 
    $res = $conn -> query($sql);
    // var_dump($res);
     
    //判断是否存在内容
    if($res -> num_rows > 0) {
        //获取结果集内容
        $arr = $res -> fetch_all(MYSQLI_ASSOC);

        //传入对象中
        $goodlist = array(
            "code"  => "0",
            "gid" => $gid,
            "datalist" => $arr
        );
    }
    else {
        $goodlist = array(
            "code" => 1,
            "gid" => $gid,
            "message" => "获取数据失败"
        );
    }

    //返回数据
    echo json_encode($goodlist,JSON_UNESCAPED_UNICODE);

    //关闭连接
    $res -> close();
    $conn -> close();
?>