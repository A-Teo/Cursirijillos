<?php 
	session_start();	
	if(!isset($_SESSION['username'])) { 
		if(isset($_POST['username'])) {
			include_once 'class/class.mapper.php';			
			$user = htmlentities($_POST['username']);
			$pass = htmlentities($_POST['password']);
			Mapper::login($user,$pass);
			header("location: index.php");
		} else { 
			include_once 'cabecera.php';
?>
	<div id="principal">
		<h1>Login</h1>
		<form method="POST">
			<fieldset>
				<legend>Llene sus datos</legend>
				<label for="username">Username: </label>
				<input type="text" name="username" id="username" /><br/>
				<label for="password">Password: </label>
				<input type="password" name="password" id="password" /><br/>
				<input type="submit" value="Enviar">
			</fieldset>
		</form>
		<a href="register.php">Registrar</a>
	</div>
<?php
		}
	include_once 'pie_pagina.php'; 
	} else {
		header("location: index.php");
	}
?>