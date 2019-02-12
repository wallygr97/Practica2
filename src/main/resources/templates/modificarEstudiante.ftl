<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">


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
                <li class="nav-item">
                    <a class="nav-link" href="/">Inicio

                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/Agregar">Agregar</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/Modificar/0">Modificar</a>
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
        <h1 class="display-3">Modificar un estudiante</h1>
        <p class="lead">Edita los campos de abajo que desees y clickea el boton guardar para confirmar los cambios.</p>
    </header>
    <hr>
    <form method="post" action="/modificarEstudiante">

        <div class="form-group">
            <label for="matricula">Matricula</label>
            <input type="text" class="form-control" id="matricula" name="matricula" placeholder="Matricula" value='${Estudiantex.matricula?string["0"]}' required readonly>
        </div>

        <div class="form-group">
            <label for="nombre">Nombre</label>
            <input type="text" class="form-control"  id="nombre" name="nombre" placeholder="Nombre" value="${Estudiantex.nombre}" required>
        </div>

        <div class="form-group">
            <label for="apellido">Apellido</label>
            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellido" value="${Estudiantex.apellido}" required>
        </div>

        <div class="form-group">
            <label for="telefono">Teléfono</label>
            <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Telefono" value="${Estudiantex.telefono}" required>
        </div>

        <input type="submit" class="btn btn-primary" value="Modificar estudiante en la tabla">

    </form>
</div>
<!-- /.container -->



</body>

</html>