<?php
if(isset($_POST)) {  
	$user = htmlentities($_POST['username']);
	$pass = htmlentities($_POST['password']);
	$dbconn = pg_connect("host=localhost dbname=login user=postgres password=acav")
   	or die('No se ha podido conectar: ' . pg_last_error());

	$query = "SELECT * FROM login WHERE username='$user' and password='$pass'";
	$result = pg_query($query) or die('La consulta fallo: ' . pg_last_error());
		
	if(pg_num_rows($result) == 1){
		session_start();
		$_SESSION['username']=$user;
	} 
		
	pg_free_result($result);
	pg_close($dbconn);
}
header("location: index.php");
?>