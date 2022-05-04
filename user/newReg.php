<?php
// include("setting.php");
$info = "";
if (isset($_POST['sub'])) {
	$n = $_POST['name'];
	$e = $_POST['email'];
	$c = $_POST['contact'];
	$p = $_POST['pass'];
	$al = mysqli_connect("localhost", "root", "", "banjara tour and travel");
	if ($n != NULL && $e != NULL && $c != NULL && $_POST['pass'] != NULL) {
		$sql = mysqli_query($al, "INSERT INTO customers(name,email,contact,password) VALUES('$n','$e','$c','$p')");
		if ($sql) {
			echo '<script>confirm("Account Created Successfully.");</script>';
            echo"<script>window.location.href = '../ahome.php';</script>";
			// echo "<script> alert('Welcome $n');
			// window.setTimeout(function(){
			// 	window.location.href = '../ahome.php';
			// }, 3000);
			// </script>";


			// echo '<script>setTimeout(function(){ ' header("location:../ahome.php"); ' }, 3000);</script>'
			
		} else {
			echo '<script>confirm("Email Id is already taken.");</script>';
			$info = "Email ID Already Exists";
			header("location:../ahome.php");
		}
	} else {
		$info = "Email or Password is required and not be empty.";
		header("location:../404.html");
	}
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
</head>

<body>

</body>

</html>