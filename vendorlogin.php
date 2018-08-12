<?php


$con = mysqli_connect("localhost","root","root","vendor");
if (!$con)
  {
  die('Could not connect: ' . mysqli_error());
  }
  $mobile=mysqli_escape_string($_POST['mobile']);
  $pass=mysqli_escape_string($_POST['pass']);

  echo $mobile;
  echo $pass;
  //$cnf=mysqli_query($con,"select mobileno,password from vendorregister where mobile='{$mobile}' and password='{$pass}'");
  $cnf=mysqli_query($con,"SELECT * FROM `vendorregister` WHERE `mobileno` LIKE '{$mobile}' AND `password` LIKE '{$pass}'"); 
  if(mysqli_num_rows($cnf)==1){
  			
  			//redirect to the home page of user login
  		header("Location:qoutation.html"); 
  			//header("Location: myaccount.php?mobile=" . $mobile );
  			
  }
  else{
			echo "$mobile   $pass";
			echo 'not loged in';
  			//redirect to the loginpage of user login
  			//header("Location:index.html"); 	
        
  }

?>
