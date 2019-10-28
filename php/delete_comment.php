<?php

require_once('dbconnect.php');

if(isset($_REQUEST['product_id']) && !empty($_REQUEST['product_id']) && isset($_REQUEST['comment_id']) && !empty($_REQUEST['comment_id']) ) {

	$product_id = $_REQUEST['product_id'];
	$comment_id = $_REQUEST['comment_id'];

	$query = "select * from citr_products where product_id = '".$product_id."' ";
	$result = mysqli_query($conn,$query);
	$count = mysqli_num_rows($result);
	if($count>0){

		$query2 = "select comment_id from citr_product_comments where product_id = '".$product_id."' and comment_id = '".$comment_id."' ";
		$result2 = mysqli_query($conn,$query2);
		$count2 = mysqli_num_rows($result2);
		if($count2>0){
			$query3 = "delete from citr_product_comments where product_id = '".$product_id."' and comment_id = '".$comment_id."' ";
			$result3 = mysqli_query($conn,$query3);
			if($result3){
				$res = mysqli_fetch_array($result);

				$product_title = stripslashes($res['product_title']);
				$product_desc = stripslashes($res['product_desc']);
				$product_image = stripslashes($res['product_image']);
				$product_price = $res['product_price'];
				$product_date = date('Y-m-d H:i:s', strtotime($res['product_date']));

				$query4 = "select * from citr_product_comments where product_id = '".$product_id ."' order by comment_id asc";
				$result4 = mysqli_query($conn,$query4);
				$count4 = mysqli_num_rows($result4);
				$comments = array();
				if($count4 > 0){
					while($res4 = mysqli_fetch_array($result4)){
						$pdt_comment_id = $res4['comment_id'];
						$pdt_comment = stripslashes($res4['comment']);
						$comment_date = date('Y-m-d H:i:s', strtotime($res4['comment_date']));

						$comments[] = array("comment_id"=>$pdt_comment_id,"product_id"=>$product_id,"comment"=>$pdt_comment,'comment_date'=>$comment_date);
					}
				}

				$response = array("message"=>"Comment Deleted Successfully","product_id"=>$product_id,"product_title"=>$product_title,"product_desc"=>$product_desc,"product_image"=>$product_image,"product_price"=>$product_price,"product_date"=>$product_date, "comments"=>$comments);
			} else {
				$response = array("message"=>"Failed to delete Comment");
			} 
		} else {
			$response = array("message"=>"Comment Details not Found");
		}
	} else {
		$response = array("message"=>"Product Details not Found");
	}
} else {
	$response = array("message"=>"Values Required");
}
echo json_encode($response);
?>