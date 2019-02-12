package com.pucmm.edu;

import freemarker.template.Configuration;
import freemarker.template.Template;
import spark.Spark;

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
            Template templateInicio = config.getTemplate("oscarPlantillas/paginaPrincipal.ftl");
            StringWriter writer = new StringWriter();
            /*
               Se le asigna la plantilla a la cual se va a acceder y poner en la dirección puesta en el get, y luego
                se le asigna la lista de estudiantes que se debe mostrar en la página  "listasDeEstudiantes" en la plantilla FTL.
        */
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("listasDeEstudiantes", StudentList);
            attributes.put("tamanoDeLista", StudentList.size() > 0);
            templateInicio.process(attributes, writer);
            return writer;
        });

        Spark.get("/Agregar", (request, response) -> {
            Template templateInicio = config.getTemplate("templates/agregarEstudiante.ftl");
            return templateInicio;
        });










    }
}
