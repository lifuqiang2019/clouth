<?php
	include "./link_db.php";

	$username = $_POST['username'];
    $password = $_POST['password'];
    $email = $_POST["email"];

    if(strlen($username)<1) {
        return ajax_backInfo(0,[],'用户名不能为空');
        exit;
    }
    if(strlen($password)<6) {
        return ajax_backInfo(0,[],'密码不能小于6位数');
        exit;
    }

    $now = date('Y-m-d',time());

    $sql="insert into admin(username, password, email, register_date)
    values ('$username', '$password', '$email', '$now')";

//		  echo $sql;
//		  exit();
    $result = mysqli_query($conn, $sql);

    if($result) {
        ajax_backInfo(1,[],'注册成功');
        
    } else {
        ajax_backInfo(0,[],'注册失败');
    }


?>