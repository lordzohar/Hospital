<?php

include "inc/doc.html";
$mysqli = new mysqli("localhost", "root", "root","hospital");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 

$query="SELECT dname ,mobile ,designation ,specialization ,department ,dayname FROM doctor,`doctor_days` WHERE doctor.vid=doctor_days.vid";


$result=mysqli_query($mysqli,$query);

echo"<table>
<tr>
<th>Doctor's Name</th>
<th>Mobile No</th>
<th>Visit Days</th>
<th>Designation</th>
<th>Specialization</th>
<th>Department</th>
</tr>";
while($row=mysqli_fetch_row($result)){
echo "<tr>
<td>$row[0]</td>
<td>$row[1]</td>
<td>$row[2]</td>
<td>$row[3]</td>
<td>$row[4]</td>
<td>$row[5]</td>
</tr>";
}
echo"</table>";

?>

