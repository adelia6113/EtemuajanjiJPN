<?php
session_start();
if (isset($_POST['username'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
echo'<script>';
echo'alert ("Please fill in the blanks");';
echo'window.location.href=("login.php");';
echo'</script>';}
else {
$username=$_POST['username'];
$password=$_POST['password'];

$conn = mysqli_connect("localhost","root","","etemujanji");

$username = stripslashes($username);
$password = stripslashes($password);
$username = mysqli_real_escape_string( $conn,$username);
$password = mysqli_real_escape_string($conn,$password);

$query = mysqli_query( $conn,"select * from loginpengguna where password='$password' AND username='$username'");
$rows = mysqli_num_rows($query);
if ($rows == 1) {
$_SESSION['login_user']=$username; 
header("location:booking.php");

}
else {
echo'<script>';
echo'alert ("Invalid username and Password");';
echo'window.location.href=("login.php");';
echo'</script>';}
mysqli_close($conn); 
}
}
?>