<?php
if(isset($_POST)) {  
	$user = htmlentities($_POST['username']);
	$pass = htmlentities($_POST['password']);
	$dbconn = mysqli_connect("localhost", "cursirij_usuario", "SIS2.DB14", "cursirij_bd")
   	or die('No se ha podido conectar: ' . mysqli_connect_error());

	$query = "SELECT * FROM usuario WHERE username='$user' and password='$pass'";
	$result = $dbconn->query($query) or die('La consulta fallo: ' . mysqli_connect_error());
		
	if(mysqli_num_rows($result) == 1){
		session_start();
		$_SESSION['username']=$user;
	} 
		
	mysqli_free_result($result);
	mysqli_close($dbconn);
}
header("location: index.php");
#CLONADO Y PUSHEADO :3
?>