<?php
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$conn = mysqli_connect("localhost", "root", "","etemujanji");

session_start();// Starting Session
// Storing Session
$username=$_SESSION['login_user'];
// SQL Query To Fetch Complete Information Of User

$ses_sql=mysqli_query($conn,"select username from loginpengguna where username='$username'");
$row = mysqli_fetch_assoc($ses_sql);
$login_session =$row['username'];

if(!isset($login_session))
{
mysqli_close($conn); // Closing Connection
header('Location: login.php'); // Redirecting To Home Page
}

?>