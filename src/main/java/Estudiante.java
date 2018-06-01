public class Estudiante {
    private int Matricula;
    private String Nombre;
    private String Apellido;
    private String Telefono;

    public Estudiante(int matricula, String nombre, String apellido, String telefono) {
        Matricula = matricula;
        Nombre = nombre;
        Apellido = apellido;
        Telefono = telefono;
    }


    public int getMatricula() {
        return Matricula;
    }

    public void setMatricula(int matricula) {
        Matricula = matricula;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String nombre) {
        Nombre = nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String apellido) {
        Apellido = apellido;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String telefono) {
        Telefono = telefono;
    }
}
