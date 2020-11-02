<?php
 $conn=mysqli_connect("localhost","root","","etemujanji");
 
 if(isset($_POST['submit']))
{

$date=mysqli_real_escape_string($conn,$_POST['date']);
$timeslot=mysqli_real_escape_string($conn,$_POST['timeslot']);
$kod_lokasi=mysqli_real_escape_string($conn,$_POST['kod_lokasi']);
$kod_pengguna=mysqli_real_escape_string($conn,$_POST['kod_pengguna']);
$kod_servis=mysqli_real_escape_string($conn,$_POST['kod_servis']);
             
$query1=mysqli_query($conn,"insert into bookings set date=('$date'), timeslot=('$timeslot'),
kod_lokasi=('$kod_lokasi'), kod_pengguna=('$kod_pengguna'), kod_servis=('$kod_servis')");


if($query1){
			echo'<script>';
					echo'alert ("Your appointment has been set");';
					echo'window.location.href=("slip.php");';
					echo'</script>';
			}
			else {echo'<script>';
					echo'alert ("Appointment process fail");';
					echo'window.location.href=("formbooking.php");';
					echo'</script>';}
		
}
	
?>
 