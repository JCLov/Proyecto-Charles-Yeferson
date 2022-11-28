<?php 

	$meses = array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
	
	//Hora Venezuela
	date_default_timezone_set('America/Caracas');
	
	//Ordenar Fecha
	function ordenarFecha($fecha){
		return date("d-m-Y", strtotime($fecha));
	}

?>