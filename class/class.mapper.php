<?php
include_once 'class.database.php';	
class Mapper {	
	public static function login($user, $pass) {
		$db = Database::getInstance();
		$mysqli = $db->getConnection(); 
		$sql_query = "SELECT * FROM usuario WHERE username='$user' and password='$pass'";
		$result = $mysqli->query($sql_query) or die('La consulta fallo: ' . mysqli_connect_error());
		
		if(mysqli_num_rows($result) == 1){			
			$_SESSION['username']=$user;
		}
		
		mysqli_free_result($result);
		mysqli_close($mysqli);
	}
}
?>