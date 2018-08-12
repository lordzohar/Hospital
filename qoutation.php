<?php
include "quotationlog.html";
$mysqli = new mysqli("localhost", "root", "root","vendor");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 
var_dump($_POST);
	$company=mysqli_escape_string($_POST['company']);
	$item=mysqli_escape_string($_POST['item']);
	$quantity=mysqli_escape_string($_POST['quantity']);
	$total=mysqli_escape_string($_POST['total']);
	$discount=mysqli_escape_string($_POST['discount']);
	$amount=mysqli_escape_string($_POST['amount']);
echo "INSERT INTO qoutation (`company`, `items`, `quantity`, `total`, `discount`, `amount`) VALUES ('{$company}', '{$item}', '{$quantity}', '{$total}', '{$discount}','{$amount}')";
$query=mysqli_query($mysqli,"INSERT INTO qoutation (`company`, `items`, `quantity`, `total`, `discount`, `amount`) VALUES ('{$company}', '{$item}', '{$quantity}', '{$total}', '{$discount}','{$amount}')");
//var_dump($query);

if ($query) {
	
	echo "<br>Sucessful Booking of Qoutation";
	
	header("Location:quotationlog.php");
}
else {
	echo " Registry Already Exists Unable to commit";
	}
?>
