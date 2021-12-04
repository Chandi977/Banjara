<?php
// include("setting.php");

$info = "";
if (isset($_POST['sub'])) {
	$email = $_POST['email'];
	$pass = $_POST['pass'];
	if ($_POST['email'] != NULL && $_POST['pass'] != NULL) {
		$conn = mysqli_connect("localhost", "root", "", "banjara tour and travel");
		$sql = "SELECT * FROM customers WHERE email='$email' AND password='$pass'";
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_row($result);
		if ($row > 0) {
			session_start();
			$_SESSION["id"] = $row[0];
			$_SESSION["name"] = $row[1];
			$_SESSION["email"] = $row[2];
			echo "<script> alert('Welcome $row[1]');
				window.location.href = '../ahome.php';
			</script>";
		} else {
			echo "<script> alert('Username or Password is Wrong.');
			window.location.href = '../ahome.php';
		</script>";
		}
	}
}

?>

<html>

</html>