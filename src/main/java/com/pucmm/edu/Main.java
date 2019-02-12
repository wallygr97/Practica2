package com.pucmm.edu;

import freemarker.template.Configuration;
import freemarker.template.Template;
import spark.Spark;

import java.util.concurrent.atomic.AtomicInteger;

import static spark.route.HttpMethod.get;
import java.io.StringWriter;

import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import static spark.Spark.staticFiles;
public class Main {
    public static void main(String[] args) {
        //Objeto de Configuracion
        final Configuration config = new Configuration(Configuration.VERSION_2_3_20);

        config.setClassForTemplateLoading(Main.class, "/");


        //añadir un nuevo estudiante atraves del freemarker
        //get te permite manejar la url

        // te permite poner la ruta para buscar los templates de este proyecto,
        staticFiles.location("/templates");

        ArrayList<Estudiante> StudentList = new ArrayList<Estudiante>();

        Spark.get("/", (request, response) -> {
            Template templateInicio = config.getTemplate("templates/paginaPrincipal.ftl");
            StringWriter writer = new StringWriter();
            /*
               Se le asigna la plantilla a la cual se va a acceder y poner en la dirección puesta en el get, y luego
                se le asigna la lista de estudiantes que se debe mostrar en la página  "listasDeEstudiantes" en la plantilla FTL.
        */
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("listasDeEstudiantes", StudentList);
            attributes.put("tamanoLista", StudentList.size() > 0);
            templateInicio.process(attributes, writer);
            return writer;
        });

        Spark.get("/agregarEstudiante", (request, response) -> {
            Template templateInicio = config.getTemplate("templates/agregarEstudiante.ftl");//se le asigna la plantilla a cual deba acceder a la ruta
            return templateInicio;//se retorna para mostrarse
        });

        // POST - Add a Student
        Spark.post("/AgregarALaLista", (request, response) -> {
            StringWriter writer = new StringWriter();
            try {
                String matricula = request.queryParams("matricula");
                String nombre = request.queryParams("nombre");
                String apellido = request.queryParams("apellido");
                String telefono = request.queryParams("telefono");
                StudentList.add(new Estudiante(Integer.parseInt(matricula), nombre, apellido, telefono));
                response.redirect("/");
            }catch (Exception e){
                System.out.println(e);
                response.redirect("/Agregar");
            }
            return writer;
        });


        Spark.get("/modificarEstudiante/:id", (request, response) -> {
            Template resultTemplate = config.getTemplate("Templates/modificarEstudiante.ftl");
            StringWriter writer = new StringWriter();

            int id = Integer.parseInt(request.params("id"));

            Map<String, Object> atributos = new HashMap<>();
            atributos.put("Estudiantex", StudentList.get(id));

            resultTemplate.process(atributos, writer);
            return writer;
        });


        // POST - UPDATE Student

        Spark.post("/modificarEstudiante", (request, response) -> {
            StringWriter writer = new StringWriter();

            try {
                String matricula = request.queryParams("matricula");
                String nombre = request.queryParams("nombre");
                String apellido = request.queryParams("apellido");
                String telefono = request.queryParams("telefono");
                Estudiante estudiante = new Estudiante(Integer.parseInt(matricula), nombre, apellido, telefono);
                //return om.writeValueAsString("user with id " + matricula+ " is updated!");
                for (Estudiante estudiantex: StudentList)
                {
                    if(estudiante.getMatricula() == estudiante.getMatricula())
                    {
                        estudiantex.setNombre(estudiante.getNombre());
                        estudiantex.setApellido(estudiante.getApellido());
                        estudiantex.setMatricula(estudiante.getMatricula());
                        estudiantex.setTelefono(estudiante.getTelefono());
                        break;
                    }
                }
                response.redirect("/");
            }catch (Exception e){
                System.out.println("Ocurrió un error a modificar el estudiante "  + e.toString());
                response.redirect("/");
            }
            return writer;
        });

        // Eliminar un estudiante de acuerdo a su parametro Id
        Spark.get("/EliminarDeLaListaDeEstudiantes/:id", (request, response) -> {
            StringWriter writer = new StringWriter();
            int id = Integer.parseInt(request.params("id"));

            StudentList.remove(id);
            response.redirect("/");
            return writer;
        });

        //enseñar la lista de estudiante actual
        Spark.get("/mostrarEstudiante/:id", (request, response) -> {
            Template resultTemplate = config.getTemplate("templates/mostrarEstudiante.ftl");
            StringWriter writer = new StringWriter();

            int id = Integer.parseInt(request.params("id"));

            Map<String, Object> atributos = new HashMap<>();
            atributos.put("EstudianteX", StudentList.get(id));

            resultTemplate.process(atributos, writer);
            return writer;
        });










    }
}
