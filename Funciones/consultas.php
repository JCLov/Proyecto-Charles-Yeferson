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

	//consulta para saber si existe persona con el id usuario
	function consultaPersonaPorUsuario($idUsuario){
		return "SELECT * FROM personas WHERE idUsuario = '$idUsuario';";
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

	//consultar intentos
	function consultarIntentos($cedula){
		return "SELECT MAX(intento) as mayor FROM personas_preguntas_respuestas WHERE cedula_persona = '$cedula' AND terminado = true;";
	}

	//inserta respuestas de la persona
	function insertaRespuestasPersona($intento, $terminado, $cedula, $respuesta){
		return "INSERT INTO personas_preguntas_respuestas(fecha, intento, terminado, cedula_persona, idPreguntasRespuestas) VALUES (now(),'$intento','$terminado','$cedula','$respuesta');";
	}

	//update terminado true
	function updateTerminado($cedula, $intentos){
		return "UPDATE personas_preguntas_respuestas SET terminado = true WHERE cedula_persona = $cedula AND intento = $intentos;";
	}

	function obtenerPuntajePorTipoPregunta($cedula, $intento, $tipo){
		return "SELECT sum(pr.puntaje) as puntaje FROM personas_preguntas_respuestas ppr join preguntas_respuestas pr on pr.id = ppr.idPreguntasRespuestas join preguntas pre on pre.id = pr.idPregunta join tipo_preguntas tp on tp.id = pre.idTipoPregunta WHERE ppr.cedula_persona = $cedula AND ppr.intento = $intento AND tp.id = $tipo;";
	}

	function consultaTipoResultado($tipo){
		return "SELECT * FROM resultados WHERE idTipoResultado = $tipo;";
	}

	function consultaResultadoPorId($idResultado){
		return "SELECT * FROM resultados WHERE id = $idResultado;";
	}

	function consultaResultadoLibrosPorResultado($idResultado){
		return "SELECT li.nombre as nombre, li.descripcion as descripcion FROM resultados_libros rl join libros li on li.id = rl.idLibros WHERE rl.idResultados = $idResultado;";
	}

	function consultaResultadoCursosPorResultado($idResultado){
		return "SELECT cu.nombre as nombre, cu.descripcion as descripcion, cu.url as url FROM resultados_cursos rc join cursos cu on cu.id = rc.idCursos WHERE rc.idResultados = $idResultado;";
	}

	function consultaResultadoLinksPorResultado($idResultado){
		return "SELECT li.nombre as nombre, li.descripcion as descripcion, li.url as url FROM resultados_link rl join links li on li.id = rl.idLinks WHERE rl.idResultados = $idResultado;";
	}

	function insertarResultadoPersonas($cedula, $idResultado){
		return "INSERT INTO resultados_personas(fecha, cedula_persona, idResultado) VALUES (now(),'$cedula','$idResultado');";
	}

	function consultarPersonas($cedula){
		return "SELECT * FROM personas WHERE cedula = $cedula;";
	}

	function consultarMunicipio($id){
		return "SELECT * FROM municipio WHERE id = $id;";
	}

	function consultarEstado($id){
		return "SELECT * FROM estado WHERE id = $id;";
	}

	function consultarInstitucion($id){
		return "SELECT * FROM institucion WHERE id = $id;";
	}

?>