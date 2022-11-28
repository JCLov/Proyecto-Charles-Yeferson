<?php 

	//consulta todos los registros de una tabla
	function consultaCompleta($tabladb){
		return "SELECT * FROM $tabladb;";
	}

	//consulta para saber si existe usuario por su usuario
	function consultaExisteUsuario($user){
		return "SELECT * FROM usuario WHERE user = '$user';";
	}

	//consulta para saber si existe persona con la cedula
	function consultaExistePersona($cedula){
		return "SELECT * FROM personas WHERE cedula = '$cedula';";
	}

	//consulta un usuario por su usuario y contraseña
	function consultaUsuario($user, $pass){
		return "SELECT * FROM usuario WHERE user = '$user' and pass = '$pass';";
	}

	//inserta un usuario
	function insertarUsuario($user, $pass, $rol){
		return "INSERT INTO usuario(user, pass, idRoles) VALUES ('$user','$pass','$rol');";
	}	

	//inserta un usuario
	function borrarUsuario($idUsuario){
		return "DELETE FROM usuario WHERE id = '$idUsuario';";
	}	

	//inserta persona
	function insertarPersonas($cedula, $nombres, $apellidos, $direccion, $fechaNacimiento, $telefono, $idUsuario, $idMunicipio, $idInstitucion){
		return "INSERT INTO personas(cedula,nombre, apellido, direccion, fecha_nacimiento, telefono, idUsuario, idMunicipio, idInstitucion) VALUES ('$cedula','$nombres','$apellidos','$direccion','$fechaNacimiento','$telefono','$idUsuario','$idMunicipio','$idInstitucion');";
	}	

	//busca preguntas y respuestas
	function consultarPreguntasRespuestasPorTipo($tipo_pregunta, $idPregunta){
		return "SELECT pr.id as idpr, pr.idPregunta as idpregunta, pr.idRespuesta as idrespuesta, pre.descripcion as pregundadescripcion, res.descripcion as respuestadescripcion FROM preguntas_respuestas pr join preguntas pre on pr.idPregunta = pre.id join respuestas res on res.id = pr.idRespuesta where pre.idTipoPregunta = '$tipo_pregunta' AND pr.idPregunta = '$idPregunta' order by pre.id;";
	}	

	//consultar preguntas
	function consultarPreguntas($tipo_pregunta){
		return "SELECT * FROM preguntas WHERE idTipoPregunta = '$tipo_pregunta';";
	}

	//consultar respuestas
	function consultarRespuestas($tipo_respuesta){
		return "SELECT * FROM respuestas WHERE idTipoRespuesta = '$tipo_respuesta';";
	}	


?>