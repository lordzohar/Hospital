<?php


$con = mysqli_connect("localhost","root","root","hospital");
if (!$con)
  {
  die('Could not connect: ' . mysqli_error());
  }
  $mobile=$_POST['mobile'];
  $pass=$_POST['pass'];
  //$cnf=mysqli_query($con,"select mobileno,password from vendorregister where mobile='{$mobile}' and password='{$pass}'");
  $cnf=mysqli_query($con,"SELECT * FROM `managerregister` WHERE `mobile` LIKE '{$mobile}' AND `password` LIKE '{$pass}'"); 
    if($cnf)
  {
  			echo 'login sucessfull';
  			//redirect to the home page of user login
  		header("Location:data.php"); 
  			//header("Location: myaccount.php?mobile=" . $mobile );
  			
  }
  else{
			echo "$mobile   $pass";
			echo 'not loged in';
  			//redirect to the loginpage of user login
  			//header("Location:index.html"); 	
        
  }

?>
