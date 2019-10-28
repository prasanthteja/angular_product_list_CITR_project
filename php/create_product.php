<?php

require_once('dbconnect.php');

if(isset($_REQUEST['product_title']) && !empty($_REQUEST['product_title']) && isset($_REQUEST['product_desc']) && !empty($_REQUEST['product_desc']) && isset($_REQUEST['product_image']) && !empty($_REQUEST['product_image']) && isset($_REQUEST['product_price']) && !empty($_REQUEST['product_price']) ) {

	$product_title = addslashes($_REQUEST['product_title']);
	$product_desc = addslashes($_REQUEST['product_desc']);
	$product_image = addslashes($_REQUEST['product_image']);
	$product_price = $_REQUEST['product_price'];

	$query = "INSERT INTO citr_products (product_title,product_desc,product_image,product_price) VALUES ('".$product_title."','".$product_desc."','".$product_image."','".$product_price."')";
	$result = mysqli_query($conn,$query);
	if($result){
		$response = array("message"=>"Product Added Successfully");
	} else {
		$response = array("message"=>"Failed to add Product details");
	}
} else {
	$response = array("message"=>"Values Required");
}
echo json_encode($response);
?>