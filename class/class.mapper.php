<?php
include_once 'class.database.php';	
class Mapper {	
	
	public static function login($user, $pass) {
		$sql_query = "SELECT * FROM usuario WHERE username='$user' and password='$pass'";
		$result = self::query($sql_query);
		
		if(mysqli_num_rows($result) == 1){			
			$_SESSION['username']=$user;
		}		
		mysqli_free_result($result);
	}
	
	private static function query($sql_query){
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$result = $mysqli->query($sql_query) or die('La consulta fallo: ' . mysqli_connect_error());
		mysqli_close($mysqli);		
		return $result; 
	}
}
?>