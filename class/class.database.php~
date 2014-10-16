<?php
class Database {
	private $_connection;
	private static $_instance;
	private $_host = "localhost";
	private $_username = "cursirij_usuario";
	private $_password = "SIS2.DB14";
	private $_database = "cursirij_bd";

	public static function getInstance() {
		if(!self::$_instance) { 
			self::$_instance = new self();
		}
		return self::$_instance;
	}

	private function __construct() {
		$this->_connection = new mysqli($this->_host, $this->_username, 
			$this->_password, $this->_database);
	
		if(mysqli_connect_error()) {
			trigger_error("Fallo la coneccion a MySQL: " . mysql_connect_error(),
				 E_USER_ERROR);
		}
	}

	private function __clone() { }

	public function getConnection() {
		return $this->_connection;
	}
}
?>