<?php
    //Imports y session start
    //Verificar si ya hay una sesion abierta
    //Si no tiene sesion, session destroy y que vuelva a esta pagina
?>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/style_login.css">        
    </head>
    <body>
        <?php
            include("funciones/funcionesPHP.php");
            include("funciones/consultas.php");
        ?>
        <main>
            <div class="container pb-5 py-5">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                            <div class="card bg-dark text-white" style="border-radius: 1rem;">
                                <div class="card-body p-5 text-center">
                                    <div class="mb-md-3 mt-md-2 pb-1">

                                        <h2 class="fw-bold mb-2">Test de Emprendedores</h2>
                                        <p class="text-white-50 mb-5">Bienvenid@, introduzca su usuario y contraseña</p>

                                        <form action="consultasPHP.php" method="post" name="formulario">
                                            <div class="form-outline form-white mb-4">
                                                <input type="text" id="usuario" name="usuario" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="usuario">Usuario</label>
                                            </div>

                                            <div class="form-outline form-white mb-4">
                                                <input type="password" id="inputClave" name="clave" class="form-control form-control-lg" required/>
                                                <label class="form-label" for="inputClave">Contraseña</label>
                                            </div>

                                            <button class="btn btn-outline-light btn-lg px-5" type="submit" name="ingresar" value="1">Login</button>
                                        </form>
                                    </div>
                                    <div>
                                        <p class="mb-0">¿Aun no tienes cuenta? <a href="register.php" class="text-white-50 fw-bold">Regístrate</a>
                                        </p>
                                    </div>
                                    <?php 
                                        if(isset($_GET['registro'])){
                                            if($_GET['registro'] == 1){
                                                
                                                ?> <div class="mt-md-2"><label><span class = "exitoso">Registro Existoso</span></label></div> <?php 

                                            }else{
                                                ?> <div class="mt-md-2"><label><span class = "requerido">Fallo el registro</span></label></div> <?php 

                                            }
                                        }else if(isset($_GET['error'])){
                                            if($_GET['error'] == 1){
                                                
                                                ?> <div class="mt-md-2"><label><span class = "requerido">Usuario o Contraseña equivocada</span></label></div> <?php 
                                            }
                                        }
                                    ?>                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer class="site-footer mt-5 pt-5 pb-3">
            <div class="container">
                <div class="row">
                <div class="col-sm-12 col-md-8">
                    <h6>Acerca de nosotros</h6>
                    <p class="text-justify">Test para emprendedores es una iniciativa para ayudar a jóvenes a orientar su futuro. Nos centramos en aportar herramientas y conocimientos adaptados a las necesidades de cada individuo. Mediante nuestro test, te ayudaremos a enfocar tus emprendimientos tomando en cuenta tus fortalezas, capacidades y conocimientos</p>
                </div>
                <div class="col-xs-12 col-md-4">
                    <h6>Links externos</h6>
                    <ul class="footer-links">
                    <li><a href="#!">Acerca de nosotros</a></li>
                    <li><a href="http://me.gob.ve/">MPPE</a></li>
                    <li><a href="https://uptaivirtualsarec.com/">UPTAIT</a></li>
                    </ul>
                </div>
                </div>
                <hr>
            </div>
            <div class="container">
                <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <p class="copyright-text">Copyright &copy; Test para Emprendedores</p>
                </div>
                </div>
            </div>
        </footer>
    </body>
</html>