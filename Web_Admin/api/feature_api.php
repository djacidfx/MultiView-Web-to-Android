<?php
	error_reporting(0);
	require "../config/init.php";
	
	$query = "SELECT * FROM web_urls WHERE is_featured = 'Yes' ORDER BY id DESC";
	$result = mysqli_query($con,$query);
	$response = array();
	
	while($row = mysqli_fetch_array($result)){
		array_push($response,array('title'=>$row[1],'url'=>$row[2],'image'=>$row[3]));
	}

	mysqli_close($con);
	
	echo json_encode($response);
	
?>