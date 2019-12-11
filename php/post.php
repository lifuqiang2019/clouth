<?php
	include "./link_db.php";

	if(!isset($_POST["username"])){
		return ajax_backInfo(0,[],'上传失败');  
	}
	$username = $_POST["username"];
    $email = $_POST["email"];
    $comment_theme = $_POST["comment_theme"];
	$comment = $_POST["comment"];
	$isnick = $_POST["isnick"];
	$now = date('Y-m-d',time());
    $sql="insert into {$db_1}.postmessage (username, email, comment_theme, comment, isnick, post_date)
    values ('$username','$email','$comment_theme','$comment','$isnick','$now')";  

//		  echo $sql;
//		  exit();
	$res = mysql_query($sql) or die(mysql_error());  

	if ($res){
		ajax_backInfo(1,[],'上传成功');
	}else{
		ajax_backInfo(0,[],'上传失败');
	}


?>
