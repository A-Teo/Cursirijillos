<?php
include_once 'class.database.php';	
class Mapper {	
	
	public static function login($user, $pass) {
		$sql_query = "SELECT * FROM usuario WHERE username='$user' AND password='$pass'";
		$result = self::query($sql_query);
		
		if(mysqli_num_rows($result) == 1){			
			$_SESSION['username']=$user;
			$sql_query = "SELECT nombre_rol FROM rol, usuario_rol WHERE usuario_username ='$user' AND rol_id_rol=id_rol";			
			echo $sql_query;			
			$result = self::query($sql_query);
			$row = mysqli_fetch_assoc($result);
			$_SESSION['rol']=$row['nombre_rol'];
		}
		mysqli_free_result($result);
	}
	
	private static function query($sql_query){
		$db = Database::getInstance();
		$mysqli = $db->getConnection();
		$result = $mysqli->query($sql_query) or die('La consulta fallo: ' . mysqli_error($mysqli));		
		return $result; 
	}
}
?>