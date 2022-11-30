<?php
    include("funciones/funcionesPHP.php");
    include("funciones/consultas.php");
    session_start();

    if(isset($_GET['sesion'])){
        session_destroy();
        header('location:login.php');
    }

    if(isset($_POST['registrar'])){
        if(isset($_POST['cedula']) && isset($_POST['usuario']) && isset($_POST['clave'])){

        include("funciones/abrir_conexion.php");

        $usuario = $_POST['usuario'];
        $clave = $_POST['clave'];
        $rol = $_POST['rol'];

        $cedula = $_POST['cedula'];
        $nombres = $_POST['nombres']; 


        $consultarExisteUsuario = mysqli_query($conexion,consultaExisteUsuario($usuario));
        $existeUsuario = mysqli_num_rows($consultarExisteUsuario);

        $consultarExistePersona = mysqli_query($conexion,consultaExistePersona($cedula));
        $existePersona = mysqli_num_rows($consultarExistePersona);

        if($existeUsuario > 0 || $existePersona > 0){
            include("funciones/cerrar_conexion.php");
            header('location:login.php?registro=3');
        }else{

            if(mysqli_query($conexion,insertarUsuario($usuario,$clave,$rol))){

                $consultarUsuario = mysqli_query($conexion,consultaUsuario($usuario,$clave));
                $usuarioResultado = mysqli_fetch_array($consultarUsuario);

                $idUsuario = $usuarioResultado['id'];
                $apellidos = $_POST['apellidos'];
                $direccion = $_POST['direccion'];
                $fechaNacimiento = $_POST['fechaNacimiento'];
                $telefono = $_POST['telefono'];
                $idMunicipio = $_POST['municipio'];
                $idInstitucion = $_POST['institucion'];

                if(mysqli_query($conexion,insertarPersonas($cedula, $nombres, $apellidos, $direccion, $fechaNacimiento, $telefono, $idUsuario, $idMunicipio, $idInstitucion))){
                    include("funciones/cerrar_conexion.php");
                    header('location:login.php?registro=1');
                }else{
                    $borrarUsuario = mysqli_query($conexion,borrarUsuario($idUsuario));
                    include("funciones/cerrar_conexion.php");
                    header('location:login.php?registro=5');
                }

            }else{
                include("funciones/cerrar_conexion.php");
                header('location:login.php?registro=4');
            }
                  
        }     

        }else{
            include("funciones/cerrar_conexion.php");
            header('location:login.php?registro=2');
        }
    }

    if(isset($_POST['ingresar'])){

        if(isset($_POST['usuario']) && isset($_POST['clave'])){

            include("funciones/abrir_conexion.php");
            $variable = "usuario";
            $usuario = $_POST[$variable];
            $clave = $_POST['clave'];
            $consultarExisteUsuario = mysqli_query($conexion,consultaUsuario($usuario,$clave));
            $existeUsuario = mysqli_num_rows($consultarExisteUsuario);
            if($existeUsuario == 0){
                include("funciones/cerrar_conexion.php");
                header('location:login.php?error=1');
            }else{
                $usuario = mysqli_fetch_array($consultarExisteUsuario);
                $nombreUsuario = $usuario['user'];
                $idUsuario = $usuario['id'];
                $personaExiste = mysqli_query($conexion,consultaPersonaPorUsuario($idUsuario));
                $persona = mysqli_fetch_array($personaExiste);
                $cedula = $persona['cedula'];
                session_destroy();
                session_start();
                $_SESSION['login'] = $nombreUsuario.",".$cedula;
                include("funciones/cerrar_conexion.php");
                header('location:index.php');
            }

        }        
    }

    if(isset($_GET['tipo'])){


        $tipo = $_GET['tipo'];

        if($tipo > 0 && $tipo < 4 && isset($_POST['cantidadPreguntas'])){
            $cantidadPreguntas = $_POST['cantidadPreguntas'];
            if($cantidadPreguntas > 0 ){

                //se guarda la variable de sesion y se separa, la variable de sesion contiene el usuario y la cedula de relacionada a ese usuario 
                //separados por coma
                $sesion = $_SESSION["login"];
                $sesionSeparado = explode(",", $sesion);
                //se guarda la cedula 
                $cedula = $sesionSeparado[1];

                include("funciones/abrir_conexion.php");

                $consutarIntentos = mysqli_query($conexion,consultarIntentos($cedula));
                $existeIntentos = mysqli_num_rows($consutarIntentos);

                $intentos = 1;
                $terminado = false;

                if($existeIntentos > 0){
                    $maxIntentos = mysqli_fetch_array($consutarIntentos);
                    $intentos = $maxIntentos['mayor'];
                    if($intentos != 0){
                        $intentos = $intentos+1;
                    }else{
                        $intentos = 1;
                    }
                }

                if($tipo == 3){
                    $terminado = true;
                    $modificarTerminado = mysqli_query($conexion,updateTerminado($cedula, $intentos));      
                }

                for ($i=0; $i < $cantidadPreguntas; $i++) { 

                    $nombreVariable = "respuesta".($i+1);
                    $respuesta = $_POST[$nombreVariable];

                    $insertarRespuestas = mysqli_query($conexion,insertaRespuestasPersona($intentos, $terminado, $cedula, $respuesta));
                }                

                include("funciones/cerrar_conexion.php");

            }

        }

        if($tipo < 3){
            $direccion = "location:preguntasFormulario.php?tipo=".($tipo+1);
             header($direccion);
        }else{
            //si es 3 el tipo se envia a respuestas.php

            //se guarda la variable de sesion y se separa, la variable de sesion contiene el usuario y la cedula de relacionada a ese usuario 
            //separados por coma
            $sesion = $_SESSION["login"];
            $sesionSeparado = explode(",", $sesion);
            //se guarda la cedula 
            $cedula = $sesionSeparado[1];

            include("funciones/abrir_conexion.php");

            $consutarIntentos = mysqli_query($conexion,consultarIntentos($cedula));
            $maxIntentos = mysqli_fetch_array($consutarIntentos);
            $intentos = $maxIntentos['mayor'];

            $puntajeUltimoIntentoTipo1 = mysqli_query($conexion,obtenerPuntajePorTipoPregunta($cedula, $intentos, 1));
            $Puntaje1 = mysqli_fetch_array($puntajeUltimoIntentoTipo1);
            $idResultadoTipo1 = 0;
            $puntosTipo1 = $Puntaje1['puntaje'];
            $consultaResultadosPorTipo1 = mysqli_query($conexion,consultaTipoResultado(1));
            while($resultadosPorTipo1 = mysqli_fetch_array($consultaResultadosPorTipo1)){
                if($puntosTipo1 >= $resultadosPorTipo1['puntosMin'] && $puntosTipo1 <= $resultadosPorTipo1['puntosMax']){
                    $idResultadoTipo1 = $resultadosPorTipo1['id'];
                }
            }
            $insertarTipo1 = mysqli_query($conexion,insertarResultadoPersonas($cedula, $idResultadoTipo1));

            $puntajeUltimoIntentoTipo2 = mysqli_query($conexion,obtenerPuntajePorTipoPregunta($cedula, $intentos, 2));
            $Puntaje2 = mysqli_fetch_array($puntajeUltimoIntentoTipo2);
            $idResultadoTipo2 = 0;
            $puntosTipo2 = $Puntaje2['puntaje'];
            $consultaResultadosPorTipo2 = mysqli_query($conexion,consultaTipoResultado(2));
            while($resultadosPorTipo2 = mysqli_fetch_array($consultaResultadosPorTipo2)){
                if($puntosTipo2 >= $resultadosPorTipo2['puntosMin'] && $puntosTipo2 <= $resultadosPorTipo2['puntosMax']){
                    $idResultadoTipo2 = $resultadosPorTipo2['id'];
                }
            }
            $insertarTipo2 = mysqli_query($conexion,insertarResultadoPersonas($cedula, $idResultadoTipo2));

            $puntajeUltimoIntentoTipo3 = mysqli_query($conexion,obtenerPuntajePorTipoPregunta($cedula, $intentos, 3));
            $Puntaje3 = mysqli_fetch_array($puntajeUltimoIntentoTipo3);
            $idResultadoTipo3 = 0;
            $puntosTipo3 = $Puntaje3['puntaje'];
            $consultaResultadosPorTipo3 = mysqli_query($conexion,consultaTipoResultado(3));
            while($resultadosPorTipo3 = mysqli_fetch_array($consultaResultadosPorTipo3)){
                if($puntosTipo3 >= $resultadosPorTipo3['puntosMin'] && $puntosTipo3 <= $resultadosPorTipo3['puntosMax']){
                    $idResultadoTipo3 = $resultadosPorTipo3['id'];
                }
            }
            $insertarTipo3 = mysqli_query($conexion,insertarResultadoPersonas($cedula, $idResultadoTipo3));

            include("funciones/cerrar_conexion.php");

            header('location:respuestas.php');
        }
    }





?>