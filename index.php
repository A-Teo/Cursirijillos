<?php 
	session_start(); 
	if(isset($_SESSION['username'])) {
		include_once 'cabecera.php';
?>
	<div id="principal">
		<a id="logout" href="logout.php">Logout</a>
		<h1>Bienvenido <?php echo $_SESSION['username']; ?></h1>
	</div> 
<?php
	include_once 'pie_pagina.php';
	} else {
		header("location: login.php");
	} 
?>