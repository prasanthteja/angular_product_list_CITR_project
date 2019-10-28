<!DOCTYPE html>
<html>
	<head>
		<title> ADD PRODUCT </title>
		<style type="text/css">
			.product_form {
				margin: 0 auto;
			    width: 360px;
			    border: 1px solid #ccc;
			    padding: 10px 20px;
			}

			#product_head {
				padding: 0px;
			    margin: 5px 0px 20px;
			    text-align: center;
			}

			.form-group {
				margin:15px 0px;
			}

			.product_form label {
				font-weight:700;
				font-size:18px;
				margin-bottom:20px;
			}

			#product_title, #product_image, #product_price {
				width: 100%;
    			height: 30px;
			}

			#product_desc {
				width: 100%;
    			height: 100px;
			}

			#pdt_submit {
				font-size: 16px;
				-webkit-appearance: none;
			    border-radius: 5px !important;
			    border-color: #8c2eff !important;
			    background-color: #8c2eff !important;
			    color: #fff !important;
			    box-shadow: none;
			    transition: background-color 0.2s ease-in-out;
			    cursor: pointer;
			    display: inline-block;
			    font-family: "Raleway", Helvetica, sans-serif;
			    font-weight: 700;
			    height: 2.75em;
			    line-height: 2.75em;
			    padding: 0 1.5em;
			    text-align: center;
			    text-decoration: none;
			    white-space: nowrap;
			}

		</style>
	</head>
	<body>	
		<form action="create_product.php" method="POST" class="product_form">

			<h1 id="product_head"> Add Product </h1>
			<div class="form-group">
				<label>Title</label><br/>
				<input type="text" id="product_title" name="product_title" required/>
			</div>

			<div class="form-group">
				<label>Description</label><br/>
				<textarea id="product_desc" name="product_desc"  required></textarea>
			</div>
		

			<div class="form-group">
				<label>Image</label><br/>
				<input type="text" id="product_image" name="product_image" required/>
			</div>

			<div class="form-group">
				<label>Price</label><br/>
				<input type="text" id="product_price" name="product_price" required/>
			</div>

			<div class="form-group">
				<input type="submit" id="pdt_submit" name="pdt_submit">
			</div>

		</form>
	</body>
</html>
