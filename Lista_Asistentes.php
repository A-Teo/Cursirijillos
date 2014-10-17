<?php 
	session_start();	
	if(isset($_SESSION['username'])) { 
		include_once 'cabecera.php';	
	?>
	<div id="principal">
		<h1>Lista Pre-inscritos</h1>
		<div class="checkbox">
            <label>
            <input type="checkbox" value="">
            Pepe Torrez
            </label>
        </div>
        <div class="checkbox disabled">
            <label>
            <input type="checkbox" value="">
            Pablo Gomez
            </label>
        </div>

	</div>
<?php
	include_once 'pie_pagina.php'; 
	} else {
		header("location: login.php");
	}
?>