<?php
session_start();
include "inc/doc.html";
echo "<h1 id='appoint_title'>My Appointment</h1>";



$mysqli = new mysqli("localhost", "root", "root","hospital");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 
$query="SELECT name,apt_date,time,dname,dept FROM patient,doctor WHERE dayname(apt_date) in( SELECT dayname FROM doctor,`doctor_days` WHERE doctor.vid=doctor_days.vid) AND department in ( SELECT dept FROM doctor,`doctor_days` WHERE doctor.vid=doctor_days.vid) AND patient.mobile like '{$_SESSION['mobile']}'";
$result=mysqli_query($mysqli,$query);

echo"<table>
<tr>
<th>Patient's Name</th>
<th>Appointment Date</th>
<th>Appointment Time</th>
<th>Doctor's Name</th>
<th>Department</th>
</tr>";
while($row=mysqli_fetch_row($result)){

echo "<tr>

<td>$row[0]</td>
<td>$row[1]</td>
<td>$row[2]</td>
<td>$row[3]</td>
<td>$row[4]</td>
</tr>";

#setting Up Session for email
	$_SESSION['pname']=$row[0];
	$_SESSION['pemail']=$row[1];
	$_SESSION['pappoint']=$row[2];
	$_SESSION['docname']=$row[3];
	$_SESSION['dept']=$row[4];
}
echo"</table>";
echo "<br>Email Has Been Sent !!";
?>
