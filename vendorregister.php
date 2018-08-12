<?php
include "medical.html";
$mysqli = new mysqli("localhost", "root", "root","vendor");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 
	
	$n=$_POST['name'];
	$e=$_POST['e-mail'];
	$m=$_POST['mobile'];
	$p=$_POST['pass'];


//$query=mysqli_query($mysqli,"INSERT INTO vendorregister VALUES ('{$n}','{$e}','{$m}','{$p}')" );
$query=mysqli_query($mysqli,"INSERT INTO vendorregister VALUES ('{$n}','{$e}','{$m}','{$p}')" );

if ($query) {
	echo "Register Successful";
	header("Location: vedorlogin.html");
}
else {
	echo "Something went wrong";
	}
?>
