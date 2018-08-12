<?php
include "inc/account.html";
$mysqli = new mysqli("localhost", "root", "root","hospital");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 
session_start();
	$name=mysqli_escape_string($_POST['name']);
	$add=mysqli_escape_string($_POST['address']);
	$mobile=mysqli_escape_string($_POST['mobile']);
	$dept=mysqli_escape_string($_POST['dept']);
	$appoint=mysqli_escape_string($_POST['adate']);
	$time=mysqli_escape_string($_POST['time']);
	$gender=mysqli_escape_string($_POST['gen']);
	$email=mysqli_escape_string($_POST['e-mail']);
	$_SESSION['pemail']=$email;

$query=mysqli_query($mysqli,"INSERT INTO patient  VALUES ('{$name}', '{$add}', '{$mobile}', '{$dept}', '{$appoint}','{$time}','{$gender}','{$email}')");

if ($query) {
	
	echo "<br>Sucessful Booking of Appointment";
	
$query="Select name,dept,apt_date,time from patient where mobile='{$mobile}'";

$result=mysqli_query($mysqli,$query);

echo"<table>
<tr>
<th>Patient Name</th>
<th>Department</th>
<th>Appointment Date</th>
<th>Appointment Time</th>

</tr>";
while($row=mysqli_fetch_row($result)){
echo "<tr>
<td>$row[0]</td>
<td>$row[1]</td>
<td>$row[2]</td>
<td>$row[3]</td>
</tr>";
}
echo"</table>";


}
else {
	echo "<br>Your Registery already exists or Appointment can not be booked";
}
?>
