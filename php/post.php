<?php
	include "./link_db.php";

	if(!isset($_POST["postusername"])){
		return ajax_backInfo(0,[],'上传失败');  
	}
	$username = $_POST["postusername"];
    $email = $_POST["postuseremail"];
    $postuserphone = $_POST["postuserphone"];
	$postmessage = $_POST["postmessage"];
	$now = date('Y-m-d',time());
    $sql="insert into postmessage (postusername, postuseremail, postuserphone, postmessage, date)
    values ('$username','$email','$postuserphone','$postmessage','$now')";

//		  echo $sql;
//		  exit();
	$result = mysqli_query($conn, $sql);

	if($result) {
		ajax_backInfo(1,[],'提交成功');
		
	} else {
		ajax_backInfo(0,[],'提交失败');
	}
?>
