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
        <link rel="stylesheet" href="css/style_login.css">
    </head>
    <body>
        <main>
            <div class="container">
                
                <div class="container py-2 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                            <div class="card bg-dark text-white" style="border-radius: 1rem;">
                                <div class="card-body p-5 text-center">
                                    <div class="mb-md-3 mt-md-2 pb-1">

                                        <h2 class="fw-bold mb-2">Test de Emprendedores</h2>
                                        <p class="text-white-50 mb-5">Bienvenid@, introduzca su usuario y contraseña</p>

                                        <form action="">
                                            <div class="form-outline form-white mb-4">
                                                <input type="text" id="usuario" class="form-control form-control-lg" />
                                                <label class="form-label" for="usuario">Usuario</label>
                                            </div>

                                            <div class="form-outline form-white mb-4">
                                                <input type="password" id="inputClave" class="form-control form-control-lg" />
                                                <label class="form-label" for="inputClave">Contraseña</label>
                                            </div>

                                            <button class="btn btn-outline-light btn-lg px-5" type="submit">Login</button>
                                        </form>
                                    </div>
                                    <div>
                                        <p class="mb-0">¿Aun no tienes cuenta? <a href="register.php" class="text-white-50 fw-bold">Regístrate</a>
                                        </p>
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