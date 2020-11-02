<?php
mysqli_connect("localhost","root","","etemujanji");
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V16</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/jpn.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
					<center><img src="images/logo1.png" height="62" width="70" ></center>
				<span class="login100-form-title p-b-41">
					BOOK YOUR APPOINTMENT

				</span>
				<div class="container-login100 bg-white text-white">
				<?php
mysqli_connect("localhost","root","","etemujanji");
include('session.php');
?>
<!DOCTYPE html>
<html>
<body>
<?php
	echo "WELCOME".$username;
	echo "<p>what do you want?</p><br><br>";
	$ql="SELECT * from bookings 
	left join loginpengguna on bookings.kod_pengguna=loginpengguna.kod_pengguna 
	left join lokasi on bookings.kod_lokasi=lokasi.kod_lokasi 
	left join servis on bookings.kod_servis=servis.kod_servis 
	where username='$username' ";
	
$display=mysqli_query($conn,$ql);
if($display){
while($row=mysqli_fetch_array($display)){

	          
			  $date =$row['date'];
			  $timeslot =$row['timeslot'];
			  $nama_lokasi=$row['nama_lokasi'];
			  $username=$row['username'];
			  $nama_servis=$row['nama_servis'];
			  
			  
?>
<?php  echo $username; ?>
</p><?php  echo $date; ?></p>
</p><?php  echo $timeslot; ?></p>
</p><?php  echo $nama_lokasi; ?></p>
</p><?php  echo $nama_servis; ?></p>
<br><br>



<?php
}}
?>
</body>
</html>
</html>




					

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>