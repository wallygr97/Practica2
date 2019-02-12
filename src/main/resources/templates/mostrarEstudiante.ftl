<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CRUD</title



    <!-- Custom styles for this template -->
    <link href="/CSS/heroic-features.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Inicio
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/agregarEstudiante">Agregar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/modificarEstudiante/0">Modificar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/EliminarDeLaListaDeEstudiantes/0">Eliminar</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<div class="container">
    <header class="jumbotron my-4 text-center">
        <h1 class="display-3">Mostrar un estudiante</h1>

    </header>
    <hr>
    <div class="card">
        <div class="text-center"><h3><span class="color: alert-primary">El estudiante a enseñar --> ${EstudianteX.nombre}</span></h3></div>
        <div class="card-body">
            <ul class="list-group">
                <li class="list-group-item"><span class="font-weight-bold">Matricula: </span>${EstudianteX.matricula?string["0"]}</span></li>
                <li class="list-group-item"><span class="font-weight-bold">Nombre: </span>${EstudianteX.nombre}</li>
                <li class="list-group-item"><span class="font-weight-bold">Apellido: </span>${EstudianteX.apellido}</li>
                <li class="list-group-item"><span class="font-weight-bold">Teléfono: </span>${EstudianteX.telefono}</li>
            </ul>
        </div>
    </div>
</div>
<!-- /.container -->

</body>

</html>