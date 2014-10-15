<?php 
	session_start();	
	if(!isset($_SESSION['username'])) { 
		include_once 'cabecera.php';	
	?>
	<div id="principal">
		<h1>Login</h1>
		<form action="db.php" method="POST">
			<fieldset>
				<legend>Llene sus datos</legend>
				<label for="username">Username: </label>
				<input type="text" name="username" id="username" /><br/>
				<label for="password">Password: </label>
				<input type="password" name="password" id="password" /><br/>
				<input type="submit" value="Enviar">
			</fieldset>
		</form>
	</div>
<?php
	include_once 'pie_pagina.php'; 
	} else {
		header("location: index.php");
	}
?>