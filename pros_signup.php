<?php
 $conn=mysqli_connect("localhost","root","","etemujanji");
 
 if(isset($_POST['submit']))
{

$username=mysqli_real_escape_string($conn,$_POST['username']);
$password=mysqli_real_escape_string($conn,$_POST['password']);
$email=mysqli_real_escape_string($conn,$_POST['email']);

             
$query1=mysqli_query($conn,"insert into loginpengguna set username=('$username'), password=('$password'),email=('$email')");


if($query1){
			echo'<script>';
					echo'alert ("Register succeed");';
					echo'window.location.href=("login.php");';
					echo'</script>';
			}
			else {echo'<script>';
					echo'alert ("Fail");';
					echo'window.location.href=("signup.php");';
					echo'</script>';}
		
}
	
?>
 