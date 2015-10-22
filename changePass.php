<?PHP
session_start();
	if(empty($_SESSION['ID']) || empty($_SESSION['NAME']) || empty($_SESSION['SURNAME'])){
		echo '<script>window.location = "Login.php";</script>';
	}
?>

Change Password
<hr>
<?PHP

	if(isset($_POST['confirmTochange'])){
		
		$username = trim($_POST['username']);
		$Old_password = trim($_POST['Old_password']);
		$new_pssword = trim($_POST['new_pssword']);
		$query = "UPDATE AA_LOGIN SET password='$new_pssword' WHERE username='$username' and password='$Old_password' ";
		$parseRequest = oci_parse($conn, $query);
		oci_execute($parseRequest);
		// Fetch each row in an associative array
		$row = oci_fetch_array($parseRequest, OCI_RETURN_NULLS+OCI_ASSOC);
		if($row){
			$_SESSION['ID'] = $row['ID'];
			$_SESSION['NAME'] = $row['NAME'];
			$_SESSION['SURNAME'] = $row['SURNAME'];
			echo '<script>window.location = "MemberPage.php";</script>';
		}else{
			echo "changePass fail.";
		}
	};
	//oci_close($conn);
?>

<form action='changePass.php' method='post'>
	Username <br>
	<input name='username' type='input'><br>
	Old Password<br>
	<input name='Old_password' type='password'><br>
	New Password <br>
	<input name='new_pssword' type='password'><br><br>
	<input name='confirmTochange' type='submit' value='changePass'>
</form>