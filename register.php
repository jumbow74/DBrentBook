<?PHP
	session_start();
	// Create connection to Oracle
	$conn = oci_connect("system", "570323Nuch", "//localhost/XE");
	if (!$conn) {
		$m = oci_error();
		echo $m['message'], "\n";
		exit;
	} 
?>
register form
<hr>

<?PHP	

	if(isset($_POST['submit'])){
		$Fname = trim($_POST['Fname']);
		$Lname = trim($_POST['Lname']);
		$Address = trim($_POST['Address']);
		$Tel = trim($_POST['Tel']);
		$Birthday = trim($_POST['Birthday']);
		$Gender = trim($_POST['Gender']);
		$E_mail = trim($_POST['E_mail']);			
		$username = trim($_POST['username']);
		$password = trim($_POST['password']);

		$ID = 1;
		
		$A = "SELECT * FROM AA_DETEILCUSTOMER WHERE username ='$username'";
		$parseRequest1 = oci_parse($conn, $A);
		oci_execute($parseRequest1);
		$row1 = oci_fetch_array($parseRequest1, OCI_RETURN_NULLS+OCI_ASSOC);
		if(!$row1){
			$query = "INSERT INTO table_name (FNAME, LNAME, ADDRESS,TEL,BIRTHDAY,GENDER,E_MAIL,USERNAME,PASSWORD,)
										VALUES ($Fname, $Lname, $Address,$Tel,$Birthday,$Gender,$E_mail,$username,$password)";
			$parseRequest = oci_parse($conn, $query);
			oci_execute($parseRequest);
			// Fetch each row in an associative array
			$row = oci_fetch_array($parseRequest, OCI_RETURN_NULLS+OCI_ASSOC);
			if($row){
				$_SESSION['ID'] = $row['ID'];
				$_SESSION['NAME'] = $row['NAME'];
				$_SESSION['SURNAME'] = $row['SURNAME'];
				echo '<script>window.location = "login.php";</script>';

			}else{

				echo "register fail.";
			}
		}
		else{

				echo "register fail.1";
		}
	};
	
	oci_close($conn);
?>




<form action='register.php' method='post'>
	First Name	<input name='Fname' type='input'>*<br><br>
	Last Name 	<input name='Lname' type='input'>*<br><br>
	Address <br>
				<input name='Address' type='input'>*<br><br>
	Tel. 		<input name='Tel' type='input'>*<br><br>
	Birthday 	<input name='Birthday' type='input'>*<br><br>
	Gender 		<input name='Gender' type='input'>*<br><br>
	E-mail		<input name='E_mail' type='input'>*<br><br>
	Username <br>
				<input name='username' type='input'>*<br><br>
	Password<br>
				<input name='password' type='password'>*<br><br>
				<input name='submit' type='submit' value='register'>
</form>
