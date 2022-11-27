<?php

	date_default_timezone_set('America/Caracas');

	$host = "localhost";
	$db = "encuestas";
	$usuario = "root";
	$clave = "";

	$conexion = mysqli_connect($host, $usuario, $clave, $db);

	if (!$conexion) {
		echo "<br><br><br><h1 style=color:red>";
		if(mysqli_connect_errno()==2002){
			die('Conexion fallo: Base de Datos local no esta en funcionamiento</h1>');
		}else if(mysqli_connect_errno()==1049){
			die('Conexion fallo: Nombre de la Base de Datos no coincide</h1>');
		}else if(mysqli_connect_errno()==1045){
			die('Conexion fallo: Nombre del Usuario y/o Contraseña no coincide</h1>');
		}else{
			die('Conexion fallo: '.mysqli_connect_errno().'</h1>');
		}
	}

?>