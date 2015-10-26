<?PHP
session_start();
	if(empty($_SESSION['ID']) || empty($_SESSION['NAME']) || empty($_SESSION['SURNAME'])){
		echo '<script>window.location = "Login.php";</script>';
	}
?>

Change Password
<hr>
<?PHP
	if (!$connect) {
			$username = trim($_POST['username']);

		}
		
			
		
		
	
	;

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