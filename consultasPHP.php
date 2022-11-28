<?php
    include("funciones/funcionesPHP.php");
    include("funciones/consultas.php");
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
    }else if(isset($_POST['ingresar'])){

        if(isset($_POST['usuario']) && isset($_POST['clave'])){

            include("funciones/abrir_conexion.php");
            $usuario = $_POST['usuario'];
            $clave = $_POST['clave'];
            $consultarExisteUsuario = mysqli_query($conexion,consultaUsuario($usuario,$clave));
            $existeUsuario = mysqli_num_rows($consultarExisteUsuario);
            if($existeUsuario == 0){
                include("funciones/cerrar_conexion.php");
                header('location:login.php?error=1&existe='.$existeUsuario);
            }else{
                include("funciones/cerrar_conexion.php");
                header('location:preguntasFormulario.php?tipo=1');
            }

        }        
    }

?>