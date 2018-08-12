<?php
require 'PHPMailer/PHPMailerAutoload.php';
session_start();

	$row[0]=$_SESSION['pname'];
	$row[1]=$_SESSION['pdate'];
	$row[2]=$_SESSION['pappoint'];
	$row[3]=$_SESSION['docname'];
	$row[4]=$_SESSION['dept'];
	$email=$_SESSION['pemail'];
var_dump($_SESSION);
$mail = new PHPMailer;

$mail->isSMTP();                                   // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';                    // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                            // Enable SMTP authentication
$mail->Username = 'your email';          // SMTP username
$mail->Password = 'your password'; // SMTP password
$mail->SMTPSecure = 'tls';                         // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587;                                 // TCP port to connect to

$mail->setFrom($email, 'Appointment For hospital');
$mail->addReplyTo('iamcoolquaid@gmail.com', 'Hospital Website');
$mail->addAddress('iamcoolquaid@gmail.com');   // Add a recipient
//$mail->addCC('cc@example.com');
//$mail->addBCC('bcc@example.com');

$mail->isHTML(true);  // Set email format to HTML

$bodyContent = '<h1>{$n} Your Booking Has Been Made </h1>';
$bodyContent = '<b>Patient Name :</b><br>'.$row[0].'<br><b>Appointment Date :</b><br>'.$row[1].'<br><b>Appointment Time:</b><br>'.$row[2].'<br><b>Doctor name :</b><br>'.$row[3].'<br><b>Department :</b><br>'.$row[4];

$mail->Subject = 'Your Doctors Appointment';
$mail->Body    = $bodyContent;

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
    header("Location: myaccount.php");

} else {

    echo 'Message has been sent';

    header("Location: myaccount1.php");
    //header("Location: myaccount.php");
}

?>
