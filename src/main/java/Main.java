import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;

public class Main {
    public static void main(String[] args) {
        
        ArrayList<Estudiante> estudiantes = new ArrayList<>();

        Configuration configuration = new Configuration(Configuration.VERSION_2_3_23);
        configuration.setClassForTemplateLoading(Main.class, "/");


        get("/", (req, res) -> {
            StringWriter wr = new StringWriter();
            Map<String, Object> att = new HashMap<>();

            Template temp = configuration.getTemplate("templates/home.ftl");

            att.put("estudiantes", estudiantes);
            temp.process(att, wr);

            return wr;
        });


            get("/agregar", (req, res) -> {
                StringWriter wr = new StringWriter();
                Template temp = configuration.getTemplate("templates/agregar.ftl");

                temp.process(null, wr);

                return wr;
            });

            post("/agregar", (req, res) -> {

                int mat = Integer.parseInt(req.queryParams("matricula"));
                String nom = req.queryParams("nombre");
                String ape = req.queryParams("apellido");
                String tel = req.queryParams("telefono");

                estudiantes.add(new Estudiante(mat, nom, ape, tel));

                res.redirect("/");

                return null;
            });

            get("/:matricula", (req, res) -> {
                try {
                    StringWriter wr = new StringWriter();
                    Map<String, Object> att = new HashMap<>();
                    Estudiante estudiante = null;
                    Template temp = configuration.getTemplate("templates/estudiante.ftl");

                    for (Estudiante est : estudiantes) {
                        if (est.getMatricula() == Integer.parseInt(req.params("matricula"))) {
                            estudiante = est;
                        }
                    }

                    if (estudiante == null) {
                        throw new Exception();
                    }

                    att.put("estudiante", estudiante);
                    temp.process(att, wr);

                    return wr;

                } catch (Exception error) {
                    error.printStackTrace();

                    return null;
                }
            });

            get("/editar/:matricula", (req, res) -> {
                try {
                    StringWriter wr = new StringWriter();
                    Map<String, Object> att = new HashMap<>();

                    Estudiante estudiante = null;
                    Template temp = configuration.getTemplate("templates/editar.ftl");

                    for (Estudiante est : estudiantes) {
                        if (est.getMatricula() == Integer.parseInt(req.params("matricula"))) {
                            estudiante = est;
                        }
                    }

                    if (estudiante == null) {
                        throw new Exception();
                    }

                    att.put("estudiante", estudiante);
                    temp.process(att, wr);

                    return wr;

                } catch (Exception error) {
                    error.printStackTrace();

                    return null;
                }
            });

            post("/editar", (req, res) -> {

                int mat = Integer.parseInt(req.queryParams("matricula"));
                String nom = req.queryParams("nombre");
                String ape = req.queryParams("apellido");
                String tel = req.queryParams("telefono");

                for (Estudiante est : estudiantes) {
                    if (est.getMatricula() == mat) {
                        est.setNombre(nom);
                        est.setApellido(ape);
                        est.setTelefono(tel);
                    }
                }

                res.redirect("/");

                return null;
            });

            get("/borrar/:matricula", (req, res) -> {
                try {
                    StringWriter wr = new StringWriter();
                    Map<String, Object> att = new HashMap<>();

                    Estudiante estudiante = null;
                    Template temp = configuration.getTemplate("templates/borrar.ftl");

                    for (Estudiante est : estudiantes) {
                        if (est.getMatricula() == Integer.parseInt(req.params("matricula"))) {
                            estudiante = est;
                        }
                    }

                    if (estudiante == null) {
                        throw new Exception();
                    }

                    att.put("estudiante", estudiante);
                    temp.process(att, wr);

                    return wr;

                } catch (Exception error) {
                    error.printStackTrace();

                    return null;
                }
            });

            post("/borrar/:matricula", (req, res) -> {
                int mat = Integer.parseInt(req.params("matricula"));
                Estudiante estudiante = null;

                for (Estudiante est : estudiantes) {
                    if (est.getMatricula() == mat) {
                        estudiante = est;
                    }
                }

                estudiantes.remove(estudiante);

                res.redirect("/");

                return null;
            });
    }
}