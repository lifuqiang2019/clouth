<?php
    include "./link_db.php";

    $username = $_POST['username'];
    $password = $_POST['password'];

    if(strlen($username)<1) {
        echo "用户名不能为空";exit;
    }
    if(strlen($password)<6) {
        echo "密码不能小于6位数";exit;
    }

    
    $sql = "select * from admin where username='$username' and password='$password'";

    $result = mysqli_query($conn, $sql);

    if($row = mysqli_fetch_assoc($result)) {
        ajax_backInfo(1,$row,'登录成功');
        
    } else {
        ajax_backInfo(0,[],'登录失败');
    }

?>