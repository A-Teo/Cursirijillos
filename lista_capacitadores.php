<?php 
	session_start();	
	if(isset($_SESSION['username'])) { 
		include_once 'cabecera.php';	
	?>
	<div id="principal">
		<h1>Lista Capacitadores</h1>
		<table class="table table-striped">
		 	<caption>Capacitadores</caption>
		 	<thead>
				<tr>
			  		<th>ID</th>
			   	<th>Nombre</th>
			   	<th>&Aacute;rea</th>
			  	</tr>
		  	</thead>
		  	<tbody>
			  	<tr>
			  		<td>1</td>
			    	<td>Marcelo Flores</td>
			    	<td>Base de Datos</td>
			  	</tr>
			  	<tr>
			  		<td>2</td>
			    	<td>Vladimir Costas</td>
			    	<td>Programaci&oacute;n Web</td>
			  	</tr>
		  	</tbody>
		</table>
	</div>
<?php
	include_once 'pie_pagina.php'; 
	} else {
		header("location: login.php");
	}
?>