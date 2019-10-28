<?php

require_once('dbconnect.php');

if(isset($_REQUEST['product_id']) && !empty($_REQUEST['product_id']) && isset($_REQUEST['comment']) && !empty($_REQUEST['comment']) ) {

	$comment = addslashes($_REQUEST['comment']);
	$product_id = $_REQUEST['product_id'];

	$query = "select * from citr_products where product_id = '".$product_id."' ";
	$result = mysqli_query($conn,$query);
	$count = mysqli_num_rows($result);
	if($count>0){
		$query2 = "INSERT INTO citr_product_comments (product_id,comment) VALUES ('".$product_id."','".$comment."')";
		$result2 = mysqli_query($conn,$query2);
		if($result2){

			$res = mysqli_fetch_array($result);	

			$product_title = stripslashes($res['product_title']);
			$product_desc = stripslashes($res['product_desc']);
			$product_image = stripslashes($res['product_image']);
			$product_price = $res['product_price'];
			$product_date = date('Y-m-d H:i:s', strtotime($res['product_date']));

			$query3 = "select * from citr_product_comments where product_id = '".$product_id ."' order by comment_id asc";
			$result3 = mysqli_query($conn,$query3);
			$count3 = mysqli_num_rows($result3);
			$comments = array();
			if($count3 > 0){
				while($res3 = mysqli_fetch_array($result3)){
					$comment_id = $res3['comment_id'];
					$pdt_comment = stripslashes($res3['comment']);
					$comment_date = date('Y-m-d H:i:s', strtotime($res3['comment_date']));

					$comments[] = array("comment_id"=>$comment_id,"product_id"=>$product_id,"comment"=>$pdt_comment,'comment_date'=>$comment_date);
				}
			}

			$response = array("message"=>"Comment Added Successfully","product_id"=>$product_id,"product_title"=>$product_title,"product_desc"=>$product_desc,"product_image"=>$product_image,"product_price"=>$product_price,"product_date"=>$product_date, "comments"=>$comments);
		} else {
			$response = array("message"=>"Failed to add Comment");
		}
	} else {
		$response = array("message"=>"Product Details not Found");
	}
} else {
	$response = array("message"=>"Values Required");
}
echo json_encode($response);
?>