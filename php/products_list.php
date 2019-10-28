<?php

require_once('dbconnect.php');

$response = array();

$query = "select * from citr_products order by product_id desc";
$result = mysqli_query($conn,$query);
$count = mysqli_num_rows($result);
if($count>0){
	while($res = mysqli_fetch_array($result)){
		$product_id = $res['product_id'];
		$product_title = stripslashes($res['product_title']);
		$product_desc = stripslashes($res['product_desc']);
		$product_image = stripslashes($res['product_image']);
		$product_price = $res['product_price'];
		$product_date = date('Y-m-d H:i:s', strtotime($res['product_date']));

		$response[] = array("product_id"=>$product_id,"product_title"=>$product_title,"product_image"=>$product_image,"product_price"=>$product_price,"product_date"=>$product_date);
	}
}

echo json_encode($response);
?>