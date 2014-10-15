<?php 
	session_start(); 
	if(isset($_SESSION['username'])) {
		include_once 'cabecera.php';
?>
	<script type="text/javascript" src="js/functions.js"></script>
	<div id="principal">
		<a id="logout" href="logout.php">Logout</a>
		<h1>Registrar Nuevo Usuario</h1>
		<form>
			<fieldset>
				<legend>Datos:</legend>
				<label for="username">Username:</label>
				<input type="text" id="username" name="username"/><br/>
				<label for="password">Password:</label>
				<input type="password" id="password" name="password"/><br/>
				<label for="repassword">Re-Password:</label>
				<input type="password" id="repassword" name="repassword"/><br/>
				<input type="submit" value="Enviar" />
			</fieldset>		
		</form>
	</div> 
<?php
	include_once 'pie_pagina.php';
	} else {
		header("location: login.php");
	} 
?>