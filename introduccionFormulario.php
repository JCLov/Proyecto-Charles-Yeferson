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

                include("funciones/abrir_conexion.php");
                include("funciones/cerrar_conexion.php");
            ?>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-auto bg-dark sticky-top">
                        <div class="d-flex flex-sm-column flex-row flex-nowrap bg-light align-items-center sticky-top bg-dark">
                            <ul class="nav nav-pills nav-flush flex-sm-column flex-row flex-nowrap mb-auto mx-auto text-center justify-content-between w-100 px-3 align-items-center">
                                <li class="nav-item">
                                    <a href="index.php" class="nav-link py-3 px-0" title="Inicio" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Inicio">
                                        <i><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><path d="M280.37 148.26L96 300.11V464a16 16 0 0 0 16 16l112.06-.29a16 16 0 0 0 15.92-16V368a16 16 0 0 1 16-16h64a16 16 0 0 1 16 16v95.64a16 16 0 0 0 16 16.05L464 480a16 16 0 0 0 16-16V300L295.67 148.26a12.19 12.19 0 0 0-15.3 0zM571.6 251.47L488 182.56V44.05a12 12 0 0 0-12-12h-56a12 12 0 0 0-12 12v72.61L318.47 43a48 48 0 0 0-61 0L4.34 251.47a12 12 0 0 0-1.6 16.9l25.5 31A12 12 0 0 0 45.15 301l235.22-193.74a12.19 12.19 0 0 1 15.3 0L530.9 301a12 12 0 0 0 16.9-1.6l25.5-31a12 12 0 0 0-1.7-16.93z"/></svg></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="dashboard.php" class="nav-link py-3 px-0" title="Dashboard" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Dashboard">
                                        <i><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M64 256V160H224v96H64zm0 64H224v96H64V320zm224 96V320H448v96H288zM448 256H288V160H448v96zM64 32C28.7 32 0 60.7 0 96V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H64z"/></svg></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="informacion.php" class="nav-link py-3 px-0" title="Información" data-bs-toggle="tooltip" data-bs-placement="right" data-bs-original-title="Información">
                                        <i><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M256 512c141.4 0 256-114.6 256-256S397.4 0 256 0S0 114.6 0 256S114.6 512 256 512zM216 336h24V272H216c-13.3 0-24-10.7-24-24s10.7-24 24-24h48c13.3 0 24 10.7 24 24v88h8c13.3 0 24 10.7 24 24s-10.7 24-24 24H216c-13.3 0-24-10.7-24-24s10.7-24 24-24zm40-144c-17.7 0-32-14.3-32-32s14.3-32 32-32s32 14.3 32 32s-14.3 32-32 32z"/></svg></i>
                                    </a>
                                </li>
                            </ul>
                            <div class="dropdown">
                                <a href="#" class="opciones d-flex align-items-center justify-content-center p-3 text-decoration-none" id="opcionesUsuario" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M495.9 166.6c3.2 8.7 .5 18.4-6.4 24.6l-43.3 39.4c1.1 8.3 1.7 16.8 1.7 25.4s-.6 17.1-1.7 25.4l43.3 39.4c6.9 6.2 9.6 15.9 6.4 24.6c-4.4 11.9-9.7 23.3-15.8 34.3l-4.7 8.1c-6.6 11-14 21.4-22.1 31.2c-5.9 7.2-15.7 9.6-24.5 6.8l-55.7-17.7c-13.4 10.3-28.2 18.9-44 25.4l-12.5 57.1c-2 9.1-9 16.3-18.2 17.8c-13.8 2.3-28 3.5-42.5 3.5s-28.7-1.2-42.5-3.5c-9.2-1.5-16.2-8.7-18.2-17.8l-12.5-57.1c-15.8-6.5-30.6-15.1-44-25.4L83.1 425.9c-8.8 2.8-18.6 .3-24.5-6.8c-8.1-9.8-15.5-20.2-22.1-31.2l-4.7-8.1c-6.1-11-11.4-22.4-15.8-34.3c-3.2-8.7-.5-18.4 6.4-24.6l43.3-39.4C64.6 273.1 64 264.6 64 256s.6-17.1 1.7-25.4L22.4 191.2c-6.9-6.2-9.6-15.9-6.4-24.6c4.4-11.9 9.7-23.3 15.8-34.3l4.7-8.1c6.6-11 14-21.4 22.1-31.2c5.9-7.2 15.7-9.6 24.5-6.8l55.7 17.7c13.4-10.3 28.2-18.9 44-25.4l12.5-57.1c2-9.1 9-16.3 18.2-17.8C227.3 1.2 241.5 0 256 0s28.7 1.2 42.5 3.5c9.2 1.5 16.2 8.7 18.2 17.8l12.5 57.1c15.8 6.5 30.6 15.1 44 25.4l55.7-17.7c8.8-2.8 18.6-.3 24.5 6.8c8.1 9.8 15.5 20.2 22.1 31.2l4.7 8.1c6.1 11 11.4 22.4 15.8 34.3zM256 336c44.2 0 80-35.8 80-80s-35.8-80-80-80s-80 35.8-80 80s35.8 80 80 80z"/></svg></i>
                                </a>
                                <ul class="dropdown-menu text-small shadow" aria-labelledby="opcionesUsuario">
                                    <li><a class="dropdown-item" href="consultasPHP.php?sesion=0">Cerrar Sesión</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm p-3 min-vh-100">
                        <div class="container">
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>