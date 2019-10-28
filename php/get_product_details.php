<?php

require_once('dbconnect.php');

if(isset($_REQUEST['product_id']) && !empty($_REQUEST['product_id']) ) {

	$product_id = $_REQUEST['product_id'];

	$query = "select * from citr_products where product_id = '".$product_id."' ";
	$result = mysqli_query($conn,$query);
	$count = mysqli_num_rows($result);
	if($count>0){
		$res = mysqli_fetch_array($result);	

		$product_title = stripslashes($res['product_title']);
		$product_desc = stripslashes($res['product_desc']);
		$product_image = stripslashes($res['product_image']);
		$product_price = $res['product_price'];
		$product_date = date('Y-m-d H:i:s', strtotime($res['product_date']));

		$query2 = "select * from citr_product_comments where product_id = '".$product_id ."' order by comment_id asc";
		$result2 = mysqli_query($conn,$query2);
		$count2 = mysqli_num_rows($result2);
		$comments = array();
		if($count2>0){
			while($res2 = mysqli_fetch_array($result2)){
				$comment_id = $res2['comment_id'];
				$comment = stripslashes($res2['comment']);
				$comment_date = date('Y-m-d H:i:s', strtotime($res2['comment_date']));

				$comments[] = array("comment_id"=>$comment_id,"product_id"=>$product_id,"comment"=>$comment,'comment_date'=>$comment_date);
			}
		}

		$response = array("product_id"=>$product_id,"product_title"=>$product_title,"product_desc"=>$product_desc,"product_image"=>$product_image,"product_price"=>$product_price,"product_date"=>$product_date, "comments"=>$comments);
	} else {
		$response = array("message"=>"Product Details not Found");
	}
}
else {
	$response = array("message"=>"Product ID is Required");
}


echo json_encode($response);
?>