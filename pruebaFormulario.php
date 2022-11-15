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
        <title>Formulario</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style_form.css">
    </head>
    <body>
        <main>
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 mx-auto">
                        <div class="card shadow border-0 mb-5">
                            <div class="card-body p-5">
                                <h2 class="h4 mb-1">Choose your main dish</h2>
                                <p class="small text-muted font-italic mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                <ul class="list-group">
                                    <li class="list-group-item rounded-0 d-flex align-items-center justify-content-between">
                                        <div class="custom-control custom-radio">
                                        <input class="custom-control-input" id="customRadio1" type="radio" name="customRadio">
                                        <label class="custom-control-label" for="customRadio1">
                                            <p class="mb-0">Insalata de riso</p><span class="small font-italic text-muted">Classic marinara sauce, authentic old-world pepperoni</span>
                                        </label>
                                        </div>
                                        <label for="customRadio1"><img src="https://i.postimg.cc/Hsq4Ygss/1-ezgo0i.png" alt="" width="60"></label>
                                    </li>
                                    <li class="list-group-item d-flex align-items-center justify-content-between">
                                        <div class="custom-control custom-radio">
                                        <input class="custom-control-input" id="customRadio2" type="radio" name="customRadio">
                                        <label class="custom-control-label" for="customRadio2">
                                            <p class="mb-0">Insalata ai cipollotti</p><span class="small font-italic text-muted">Classic marinara sauce, authentic old-world pepperoni</span>
                                        </label>
                                        </div>
                                        <label for="customRadio2"><img src="https://i.postimg.cc/zf5ChFgs/2-rqo4zs.gif" alt="" width="60"></label>
                                    </li>
                                    <li class="list-group-item d-flex align-items-center justify-content-between">
                                        <div class="custom-control custom-radio">
                                        <input class="custom-control-input" id="customRadio3" type="radio" name="customRadio">
                                        <label class="custom-control-label" for="customRadio3">
                                            <p class="mb-0">Insalata caprese</p><span class="small font-italic text-muted">Classic marinara sauce, authentic old-world pepperoni</span>
                                        </label>
                                        </div>
                                        <label for="customRadio3"><img src="https://i.postimg.cc/Jnzj67KK/4-t444fl.png" alt="" width="60"></label>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </body>
</html>