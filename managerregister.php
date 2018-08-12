<?php
include "medical.html";
$mysqli = new mysqli("localhost", "root", "root","hospital");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 
	
	$n=mysqli_escape_string($_POST['name']);
	$e=mysqli_escape_string($_POST['e-mail']);
	$m=mysqli_escape_string($_POST['mobile']);
	$p=mysqli_escape_string($_POST['pass']);


//$query=mysqli_query($mysqli,"INSERT INTO vendorregister VALUES ('{$n}','{$e}','{$m}','{$p}')" );
$query=mysqli_query($mysqli,"INSERT INTO managerregister VALUES ('{$n}','{$e}','{$m}','{$p}')" );

if ($query) {
	echo "Register Successful";
	header("Location: managerlogin.html");
}
else {
	echo "Something went wrong";
	}
?>
