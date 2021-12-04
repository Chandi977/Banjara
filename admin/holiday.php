<?php

session_start();
if (!isset($_SESSION['aid'])) {
	header("location:admin.php");
} else {
	$conn = mysqli_connect("localhost", "root", "", "banjara tour and travel");
	$aid = $_SESSION['aid'];
	$info = "";
	if (isset($_POST['sub'])) {
		$a = mysqli_query($conn, "SELECT * FROM admin WHERE aid='$aid'");
		$b = mysqli_fetch_array($a);
		$name = $b['name'];
		$n = $_POST['name'];
		$am = $_POST['amount'];
		if (isset($_FILES["img"]) && $_FILES["img"]["error"] == 0 && $n != NULL && $am != NULL) {
			$valid = ["jpg" => "image/jpg", "png" => "image/png", "jpeg" => "image/jpeg"];
			$fname = $_FILES["img"]["name"];
			$type = $_FILES["img"]["type"];
			$size = $_FILES["img"]["size"];
			$ext = pathinfo($fname, PATHINFO_EXTENSION);
			if (!array_key_exists($ext, $valid)) {
				die("Not a valid extension");
			}
			$or_size = 2 * 1024 * 1024;
			if ($size > $or_size) {
				die("Please Select Valid size");
			}
			if (in_array($type, $valid)) {
				if (file_exists("data/" . $fname)) {
					echo "File already exists";
				} else {
					move_uploaded_file($_FILES["img"]["tmp_name"], "data/" . $fname);
					
					$sql = mysqli_query($conn, "INSERT INTO holiday(name,amount,path) VALUES('$n','$am','data/$fname')");
				
					if (mysqli_query($conn, $sql)) {
						echo "File Saved";
						header("location:dashboard.php");
					} else {
						echo mysqli_error($conn);
						header("location:dashboard.php");
					}
					echo "File Upload";
					header("location:dashboard.php");
				}
			} else {
				echo "Not Image";
				header("location:dashboard.php");
			}
		} else {
			echo "Error:" . $_FILES["img"]["error"];
			// header("location:dashboard.php");
		 }
		// $a = mysqli_query($conn, "SELECT * FROM admin WHERE aid='$aid'");
		// $b = mysqli_fetch_array($a);
		// $name = $b['name'];
		// $n = $_POST['name'];
		// $am = $_POST['amount'];
		// if ($n != NULL && $am != NULL) {
		// 	$sql = mysqli_query($conn, "INSERT INTO holiday(name,amount) VALUES('$n','$am')");
		// 	if ($sql) {
		// 		$info = "Successfully Added";
		// 		header("location:dashboard.php");
		// 	} else {
		// 		$info = "Package Name Already Exists";
		// 		header("location:dashboard.php");
		// 	}
		// } else {
		// 	$info = "Values cannot be Null";
		// 	header("location:dashboard.php");
		// }
	}
}
?>




<html>

</html>