<?php
session_start();
include "quotationlog.html";
$mysqli = new mysqli("localhost", "root", "root","vendor");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 

$query="SELECT * from qoutation";

$result=mysqli_query($mysqli,$query);

echo"<table>
<tr>
<th>Company's Name</th>
<th>Item</th>
<th>Quantity</th>
<th>Total</th>
<th>Discount</th>
<th>Amount</th>
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
 
