<?php
include "register.html";
$mysqli = new mysqli("localhost", "root", "root","hospital");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 
	
	$n=mysqli_escape_string($_POST['name']);
	$e=mysqli_escape_string($_POST['e-mail']);
	$m=mysqli_escape_string($_POST['mobile']);
	$p=mysqli_escape_string($_POST['pass']);
session_start();
$_SESSION["mobile"] = '$m';
$query=mysqli_query($mysqli,"INSERT INTO registration  VALUES ('{$n}','{$e}','{$m}','{$p}')" );

if ($query) {
	//echo "Register Successful";
	header("Location:login.html"); 	
}
else {
	echo "Something went wrong";
	}
?>
