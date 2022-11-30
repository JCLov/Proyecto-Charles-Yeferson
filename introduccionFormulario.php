<?php
    include("funciones/abrir_conexion.php");
    include("funciones/cerrar_conexion.php");
    session_start();
    if(!isset($_SESSION["login"])){
        header('location:login.php');
    }
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Comenzar</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-5/css/bootstrap.min.css">
        <script src="bootstrap-5/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/style_login.css">
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <main>
            <?php 
                include("funciones/funcionesPHP.php");
                include("funciones/consultas.php");
                //se guarda la variable de sesion y se separa, la variable de sesion contiene el usuario y la cedula de relacionada a ese usuario 
                //separados por coma
                $sesion = $_SESSION["login"];
                $sesionSeparado = explode(",", $sesion);
                //se guarda la cedula 
                $cedula = $sesionSeparado[1];
            ?>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm p-4 min-vh-100">
                        <div class="container py-5 h-100">
                            <div class="row d-flex justify-content-center align-items-center h-100">
                                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                                    <div class="card bg-dark text-white" style="border-radius: 1rem;">
                                        <div class="card-body p-5 text-center">
                                            <div class="mb-md-3 mt-md-2 pb-1">

                                                <h2 class="fw-bold mb-4">Antes de Comenzar</h2>
                                                <p class="text-white-50 mb-4">A continuación empezará el test para emprendedores, se realizarán preguntas que determinaran tu personalidad, capacidades y talentos. Y al finalizar se harán recomendaciones enfocadas a desarrollar tu potencial</p>
                                                <a href="preguntasFormulario.php">
                                                    <button class="btn btn-outline-light btn-lg px-5" type="submit" name="continuar" value="1">Continuar</button>
                                                </a>
                                            </div>                                
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>