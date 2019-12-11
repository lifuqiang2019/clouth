<?php
	class backInfo{
	    public $status; 
	    public $data; 
	    public $info; 
	}


	
	function ajax_backInfo($status,$data,$info){
		$back_item = new backInfo();
		$back_item -> status = $status;
	    $back_item -> data = $data;
		$back_item -> info = $info;

		echo json_encode($back_item);
	}


?>
