<?php 
	session_start();	
	if(isset($_SESSION['username'])) { 
		include_once 'cabecera.php';	
	?>
	<div id="principal">
		<h1>Lista Pre-inscritos</h1>
		<form action="demo_form.asp" method="get">
            <input type="checkbox" name="vehicle" value="Pepe Perez" checked> Pepe Perez<br>
            <input type="checkbox" name="vehicle" value="Luis Torrez" checked> Luis Torrez<br>
            <input type="submit" value="Submit">
        </form>

	</div>
<?php
	include_once 'pie_pagina.php'; 
	} else {
		header("location: login.php");
	}
?>