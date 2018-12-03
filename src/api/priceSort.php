<?php
    include "connect.php";

    //价格排序
    //接受数据 默认升序
    $page = isset($_GET["page"]) ? $_GET["page"] : 1; //当前页
    $nums = isset($_GET["qty"]) ? $_GET["qty"] : 24; //当前页面数据条数
    $order = isset($_GET["order"]) ? $_GET["order"] : "asc"; 
    $index = ($page-1)*$nums; //索引
    //sql语句
    $sql = "select * from goodList order by price $order LIMIT $index,$nums";
    //执行语句，得到结果集
    $res = $conn -> query($sql);
    // var_dump($res);
    if($res -> num_rows >0){
        //获取结果集的内容
        $arr = $res -> fetch_all(MYSQLI_ASSOC);
        //var_dump($arr);
        $goodlist = array(
            "code" => 0,
            "page" => $page,
            "nums" => $nums,
            "datalist" => $arr
        );
    }
    else {
        $goodlist = array(
            "code" => 1,
            "message" => "参数有问题！"
        );
    }

     echo json_encode($goodlist,JSON_UNESCAPED_UNICODE);
?>