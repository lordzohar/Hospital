<?php
session_start();
include "data.html";
echo "<h1 id='appoint_title'>Qoutation List For Manager</h1>";



$mysqli = new mysqli("localhost", "root", "root","hospital");


if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 
//------------Side1------------------
//-------------Crocin------------
$query="SELECT * FROM `v1` WHERE `items` LIKE 'Crocin' ORDER BY `amount` ASC,`quantity` DESC";
$result=mysqli_query($mysqli,$query);

echo"<div class=side>
<table class='Crocin'>
<tr><th colspan=6>For Crocin</th></tr>
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
//------------Asprin------------
$query="SELECT * FROM `v1` WHERE `items` LIKE 'Aspirin' ORDER BY `amount` ASC,`quantity` DESC";
$result=mysqli_query($mysqli,$query);

echo"<table class='Aspirin'>
<tr><th colspan=6>For Aspirin</th></tr>
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
echo"</table></div>";
//-------Side2----------
//-------------Disprin------------
$query="SELECT * FROM `v1` WHERE `items` LIKE 'Dispirin' ORDER BY `amount` ASC,`quantity` DESC";
$result=mysqli_query($mysqli,$query);

echo"<div class='side'><table class='Dispirin'>
<tr><th colspan=6>For Dispirin</th></tr>
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
//---------Diclogem----------
$query="SELECT * FROM `v1` WHERE `items` LIKE 'Diclogem' ORDER BY `amount` ASC,`quantity` DESC";
$result=mysqli_query($mysqli,$query);

echo"<table class='Diclogem'>
<tr><th colspan=6>For Diclogem</th></tr>
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
echo"</table></div>";









?>
