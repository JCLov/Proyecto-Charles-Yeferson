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
        <title>Formulario</title>
        <link rel="stylesheet" type="text/css" href="bootstrap-5/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/style_form.css">
    </head>
    <body>
        <?php
            include("funciones/funcionesPHP.php");
            include("funciones/consultas.php");
        ?>
        <main>
            <div class="container">
                <?php 
                    //se pregunta si se esta mandando por el metodo get una variable llamda tipo
                    if(!isset($_GET['tipo'])){
                        header('location:preguntasFormulario.php?tipo=1');
                    }else{
                        $tipo = $_GET['tipo'];
                        $direccion = "consultasPHP.php?tipo=".$tipo;
                    }
                ?>
                <form action="<?php echo $direccion; ?>" method="post" name="formularioPreguntas">
                    <div class="row">

                        <?php 
    
                            if(isset($_GET['tipo'])){
    
                                include("funciones/abrir_conexion.php");
                                $consultaPregunta = mysqli_query($conexion,consultarPreguntas($tipo));
                                $existePregunta = mysqli_num_rows($consultaPregunta);
                                $contPreguntas = 0;
                                if($existePregunta > 0){
                                    while($resultadoPreguntas = mysqli_fetch_array($consultaPregunta)){
                                    $contPreguntas++;
                                    ?>
    
                                        <div class="col-lg-7 mx-auto">
                                        <div class="card shadow-5-strong bg-dark text-white mt-5 mb-2" style="border-radius: 1rem;">
                                            <div class="card-body p-5">                                
                                                <h2 class="h4 mb-1">Pregunta <?php echo $contPreguntas.": ".$resultadoPreguntas['descripcion']; ?></h2>
                                                <p class="small text-muted font-italic mb-4">Seleccione una respuesta</p>
                                                <ul class="list-group">
                                                    <?php
                                                        $contRespuestas = 0;
                                                        $consultaRespuesta= mysqli_query($conexion,consultarPreguntasRespuestasPorTipo($tipo,$resultadoPreguntas['id']));
                                                        while($resultadoRespuestas = mysqli_fetch_array($consultaRespuesta)){
                                                            $contRespuestas++;
                                                        ?>
                                                            <li class="list-group-item rounded-0 d-flex align-items-center justify-content-between bg-body text-white" style="border: 1px solid white">
                                                                <div class="custom-control custom-radio">
                                                                <input class="custom-control-input" id="radiobutton<?php echo $resultadoRespuestas['idpr']; ?>" type="radio" name="respuesta<?php echo $contPreguntas; ?>" value="<?php echo $resultadoRespuestas['idpr']; ?>">
                                                                <label class="custom-control-label" for="radiobutton<?php echo $resultadoRespuestas['idpr']; ?>">
                                                                    <p class="mb-0"><?php echo $resultadoRespuestas['respuestadescripcion'] ?></p><span class="small font-italic text-muted">Descripcion Respuesta</span>
                                                                </label>
                                                                </div>
                                                            </li>
                                                        <?php
                                                        }
    
                                                    ?>                                                
                                                </ul>
                                                <p class="small text-muted font-italic mb-1 mt-4" align=right>Pregunta Nr: <?php echo $contPreguntas; ?></p>
                                            </div>
                                        </div>
                                    </div>
    
                                    <?php
                                    }
                                }
    
                                include("funciones/cerrar_conexion.php");
                            }                       
    
                        ?>   
                    </div>
                    <div class="row pt-4">
                        <input type="hidden" name="cantidadPreguntas" value="<?php echo $contPreguntas; ?>">
                        <div class="col-lg-auto col-md-auto col-sm-auto mb-4 mx-auto">
                            <div class="card border-0 shadow-5-strong bg-dark text-white" style="border-radius: 1rem;">
                                <div class="card-body p-2">
                                    <div class="row align-items-center">
                                        <div class="col-lg-2">
                                            <button class="btn btn-outline-light btn-lg" type="submit" name="siguiente" value="1">Siguiente</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </main>
    </body>
</html>