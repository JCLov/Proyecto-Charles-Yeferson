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
    </head>
    <body>
        <main>
            <div class="container">
                <section class="py-5">
                    <div class="container py-5">
                        <div class="row">
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-sm rounded">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Course statistics</h3>
                                                <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <!-- Example 1 -->
                                                <canvas id="pieChart1"></canvas>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-sm rounded">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Course statistics</h3>
                                                <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <!-- Example 2 -->
                                                <canvas id="pieChart2"></canvas>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-sm rounded">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Course statistics</h3>
                                                <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <!-- Example 3 -->
                                                <canvas id="pieChart3"></canvas>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-sm rounded">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Course statistics</h3>
                                                <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <!-- Example 4 -->
                                                <canvas id="pieChart4"></canvas>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-sm rounded">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Course statistics</h3>
                                                <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <!-- Example 5 -->
                                                <canvas id="pieChart5"></canvas>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 mb-4">
                                <div class="card border-0 shadow-sm rounded">
                                    <div class="card-body p-4">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h3 class="fw-bold">Course statistics</h3>
                                                <p class="small text-muted mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <!-- Example 6 -->
                                                <canvas id="pieChart6"></canvas>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="card border-0 shadow-sm rounded" id="custom">
                                    <div class="card-body p-5">
                                        <div class="row align-items-center">
                                            <div class="col-lg-6">
                                                <h2 class="fw-bold">Customize your chart</h2>
                                                <p class="text-muted mb-5 fst-italic">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                            </div>

                                            <div class="col-lg-6">

                                                <!-- Example 7 -->
                                                <div class="position-relative">
                                                    <canvas id="pieChart7"></canvas>
                                                    <div class="position-absolute position-center text-center pt-5">
                                                        <h1 class="fw-bold text-uppercase mb-0">$124k</h1>
                                                        <p class="text-muted text-uppercase mb-0">Toral expense</p>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


                <!-- FOOTER -->
                <footer class="w-100 py-4 flex-shrink-0">
                    <div class="container py-4">
                        <div class="row gy-4 gx-5">
                            <div class="col-lg-4 col-md-6">
                                <h5 class="h1 text-white">FB.</h5>
                                <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                                <p class="small text-muted mb-0">&copy; Copyrights. All rights reserved. <a class="text-primary" href="#">Bootstrapious.com</a></p>
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <h5 class="text-white mb-3">Quick links</h5>
                                <ul class="list-unstyled text-muted">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Get started</a></li>
                                <li><a href="#">FAQ</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <h5 class="text-white mb-3">Quick links</h5>
                                <ul class="list-unstyled text-muted">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Get started</a></li>
                                <li><a href="#">FAQ</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-6">
                                <h5 class="text-white mb-3">Newsletter</h5>
                                <p class="small text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.</p>
                                <form action="#">
                                    <div class="input-group mb-3">
                                        <input class="form-control" type="text" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                                        <button class="btn btn-primary" id="button-addon2" type="button"><i class="fas fa-paper-plane"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- FINAL FOOTER -->
            </div>
        </main>
    </body>
</html>