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
        <title>Registrarse</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style_login.css">
    </head>
    <body onload="cargarTipoInstitucion(), cargarEstado()">
        <main>
            <div class="container">
                <section class="text-center py-2">
                    <div class="card mx-4 mx-md-5 shadow-5-strong bg-dark text-white" style="border-radius: 1rem;">
                        <div class="card-body py-5 px-md-5">
                            <div class="row d-flex justify-content-center">
                                <div class="">
                                    <h2 class="fw-bold mb-5">Regístrate ahora</h2>
                                    <form>
                                        <div class="row">
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <input type="number" id="cedula" class="form-control" required/>
                                                    <label class="form-label" for="cedula">Cédula</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <input type="text" id="nombres" class="form-control" required/>
                                                    <label class="form-label" for="nombres">Nombres</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <input type="text" id="apellidos" class="form-control" required/>
                                                    <label class="form-label" for="apellidos">Apellidos</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <input type="date" id="fecha" class="form-control"/>
                                                    <label class="form-label" for="fecha">Fecha de Nacimiento</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                <select id="tipoInstitucion" name="tipoInstitucion" class="form-select" aria-label="Default select example" onchange="cargarInstitucion()">
                                                </select>
                                                    <label class="form-label" for="tipoInstitucion">Tipo de institución</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <select id="institucion" name="institucion" class="form-select" aria-label="Default select example">
                                                    </select>
                                                    <label class="form-label" for="form3Example2">Institución</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <input type="tel" id="telefono" class="form-control" placeholder="XXXX-XXXXXXX" pattern="[0-9]{4}-[0-9]{7}"/>
                                                    <label class="form-label" for="telefono">Teléfono</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <select name="estado" id="estado" class="form-select" aria-label="Default select example" onchange="cargarMunicipio()">
                                                    </select>
                                                    <label class="form-label" for="estado">Estado</label>
                                                </div>
                                            </div>
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <select name="municipio" id="municipio" class="form-select" aria-label="Default select example">
                                                    </select>
                                                    <label class="form-label" for="municipio">Municipio</label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-outline mb-4">
                                                <input type="text" id="direccion" class="form-control" />
                                                <label class="form-label" for="direccion">Dirección</label>
                                        </div>

                                        <div class="row">
                                            <div class="form-outline mb-4 col-md-6">
                                                <input type="text" id="usuario" class="form-control" required/>
                                                <label class="form-label" for="usuario">Usuario</label>
                                            </div>
                                            <!-- Password input -->
                                            <div class="form-outline mb-4 col-md-6">
                                                <input type="password" id="clave" class="form-control" required/>
                                                <label class="form-label" for="clave">Contraseña</label>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-4 mb-4">
                                                <div class="form-outline">
                                                    <select name="rol" id="rol" class="form-select" aria-label="Default select example" onchange="usuarioAdmin()">
                                                        <option value="1">Estandar</option>
                                                        <option value="2">Administrador</option>
                                                    </select>
                                                    <label class="form-label" for="rol">Rol de Usuario</label>
                                                </div>
                                            </div>
                                            <div class="form-outline mb-4 col-md-4">
                                                <input type="text" id="verificarUsuario" class="form-control" disabled/>
                                                <label class="form-label" for="verificarUsuario">Verificacion: Usuario</label>
                                            </div>
                                            <!-- Password input -->
                                            <div class="form-outline mb-4 col-md-4">
                                                <input type="password" id="verificarClave" class="form-control" disabled/>
                                                <label class="form-label" for="verificarClave">Verificacion: Contraseña</label>
                                            </div>
                                        </div>

                                        <!-- Submit button -->
                                        <button type="submit" class="btn btn-outline-light btn-lg px-5 mb-4">
                                            Registrar
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>   
            </div>
        </main>
    </body>
</html>
<script src="js/register.js"></script>