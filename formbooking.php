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
			
				
				<?php
mysqli_connect("localhost","root","","etemujanji");
include('session.php');
?>
<html>
<body>
<?php
	$nama_servis =$_GET['nama_servis'];
	
	echo "WELCOME ".$username;
	echo "<p>You just select the ".$nama_servis." service</p>";
	
	
		
	$ql="SELECT * from servis where nama_servis='$nama_servis'";
	$sql="SELECT * from loginpengguna where username='$username'";
	
$display=mysqli_query($conn,$ql);
$display2=mysqli_query($conn,$sql);

if($display && $display2){
while($row=mysqli_fetch_array($display)){
	while($row2=mysqli_fetch_array($display2)){

	          $kod_servis =$row['kod_servis']; 
			  
			  $email =$row2['email']; 
			  $kod_pengguna =$row2['kod_pengguna'];
			  
?>
				<form method="post" action="pros_addform.php">
				
				<p>Email</p>
				<input  type="text" name="" readonly="readonly" value="<?php echo $email; ?>">
				
				<p>Kod Pengguna</p>
				<input  type="text" name="kod_pengguna" readonly="readonly" value="<?php echo $kod_pengguna; ?>">
				
				<p>Jenis Servis</p>
				<input  type="text" name="" readonly="readonly" value="<?php echo $nama_servis; ?>">
				
				<p>Kod Servis</p>
				<input  type="text" name="kod_servis" readonly="readonly" value="<?php echo $kod_servis; ?>">
				
				<p>Tarikh</p>
				<input  type="date" name="date" required="" value="">
				
				<p>Slot masa</p>
				<input  type="text" name="timeslot" required="" value="">
				
				<p>lokasi</p>
				<select name="kod_lokasi">
				<option value="201">Jabatan Pendaftaran Negara (Cawangan Kota Tinggi)</option>
				<option value="202">Jabatan Pendaftaran Negara Negeri Johor Kompleks Kementerian Dalam Negeri Taman, Setia Tropika</option>
				<option value="203">JPN Pasir Gudang</option>
				<option value="204">Jabatan Pendaftaran Negara, Kulai</option>
				<option value="205">Jabatan Pendaftaran Negara
				3rd floor, UTC</option>
				<option value="206">National Registration Department Kota Tinggi Branch	Pekan Kota Tinggi,</option>
				<option value="207">Jabatan Pendaftaran Negara, Daerah Mersing</option>
				<option value="208">Jabatan Pendaftaran Negara (JPN) Muar</option>
				<option value="209">Jabatan Pendaftaran Negara Tangkak</option>
				<option value="210">Jabatan Pendaftaran Negara Daerah Segamat</option>
				<option value="211">Jabatan Pendaftaran Negara Rengit</option>
				<option value="212">UTC Pasir Gudang Johor</option>
				<option value="213">Jabatan Pendaftaran Negara,Batu Pahad</option>
				<option value="214">Jabatan Pendaftaran Negara Simpang Renggam</option>
				<option value="215">Jabatan Pendaftaran Negara Daerah Kecil Yong PENG</option>
				<option value="216">Jabatan Pendaftaran Negara Daerah Kluang</option>
				<option value="217">Jabatan Pendaftaran Negara Daerah Pontian</option>
				<option value="218">Jabatan Pendaftaran Negara Daerah Tangkak</option>
				<option value="219">Jabatan Pendaftaran Negara 


				</select>
				<br><br>

			<div class="container-login100-form-btn m-t-32">
						<button class="login100-form-btn" name="submit">
							LET'S START
						</button>
					</div>

				</form>
				
<?php 
}
}
}
?>
</body>
</html>


					<

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