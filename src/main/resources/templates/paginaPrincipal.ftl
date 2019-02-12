<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Crud</title>



    <!-- Custom styles for this template -->
    <link href="/CSS/heroic-features.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">CRUD GERARD</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/">Inicio
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/agregarEstudiante">Agregar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/modificarEstudiante">Modificar</a>
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

    <!-- Jumbotron Header -->
    <header class="jumbotron my-4 text-center">
        <h1 class="display-3">Bienvenido</h1>
    </header>

    <!-- Page Features -->
    <div class="bg-primary text-center text-white">
        <#if tamanoLista>
            <table class="table">
                <thead>
                <tr>
                    <th>Matricula</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Teléfono</th>

                </tr>
                </thead>
                <tbody>
                <#assign contadorDeEstudiantes = 0>

                <#list listasDeEstudiantes as Estudiante>
                    <tr class="animated fadeInUp">
                        <td>${Estudiante.matricula?string["0"]}</td>
                        <td>${Estudiante.nombre}</td>
                        <td>${Estudiante.apellido}</td>
                        <td>${Estudiante.telefono}</td>
                        <td><a href="/modificarEstudiante/${contadorDeEstudiantes}" class="btn btn-light" role="button">Modificar</a></td>
                        <td><a href="/EliminarDeLaListaDeEstudiantes/${contadorDeEstudiantes}"  class="btn btn-light" role="button">Eliminar</a></td>
                        <td><a href="/mostrarEstudiante/${contadorDeEstudiantes}"  class="btn btn-light" role="button">Mostrar</a></td>
                    </tr>
                    <#assign contadorDeEstudiantes++>
                </#list>
                </tbody>
            </table>
        </#if>
    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<!-- Bootstrap core JavaScript -->

</body>

</html>