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
        <title>Resultados</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style_result.css">
        <link rel="stylesheet" href="css/style_login.css">
    </head>
    <body>
        <main>
            <div class="container">
                <section class="py-3">
                    <div class="container py-5">
                    <div class="row">
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-5-strong bg-dark text-white" style="border-radius: 1rem;">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Resultados Personales</h3>
                                                <p class="small text-muted mb-0">Resultados segun tu personalidad</p>
                                            </div>

                                            <div class="col-lg-6">                                                
                                                <div class="descripcionPersonal mb-2"></div>
                                                <div class="librosPersonal mb-2">Libros:</div>
                                                <div class="cursosPersonal mb-2">Cursos:</div>
                                                <div class="linksPersonal mb-2">Links:</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-5-strong bg-dark text-white" style="border-radius: 1rem;">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Talentos</h3>
                                                <p class="small text-muted mb-0">Recomendaciones según tus talentos</p>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="descripcionTalento mb-2"></div>
                                                <div class="librosTalento mb-2">Libros:</div>
                                                <div class="cursosTalento mb-2">Cursos:</div>
                                                <div class="linksTalento mb-2">Links:</div>                                              
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-5-strong bg-dark text-white" style="border-radius: 1rem;">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Ámbito Laboral</h3>
                                                <p class="small text-muted mb-0">Sugerencias para el campo laboral</p>
                                            </div>

                                            <div class="col-lg-6">
                                                <div class="descripcionLaboral mb-2"></div>
                                                <div class="librosLaboral mb-2">Libros:</div>
                                                <div class="cursosLaboral mb-2">Cursos:</div>
                                                <div class="linksLaboral mb-2">Links:</div>                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-5-strong bg-dark text-white" style="border-radius: 1rem;">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Resultados estadísticos</h3>
                                                <p class="small text-muted mb-0">Puntaje del formulario según tus respuestas</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <canvas id="pieChart3"></canvas>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </main>
    </body>
</html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<script src="js/resultados.js"></script>