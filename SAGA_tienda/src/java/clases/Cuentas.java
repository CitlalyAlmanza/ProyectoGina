package clases;

import java.io.Serializable;

 
public class Cuentas implements Serializable{
    
    private Integer idUsuario;
    private String nombre;
    private  String correo;
    private String cuenta;
    private String password;
    private String seguridad;
    private Integer bloqueo;

    public Cuentas(Integer idUsuario, String nombre, String correo, String cuenta, String password, String seguridad, Integer bloqueo) {
        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.correo = correo;
        this.cuenta = cuenta;
        this.password = password;
        this.seguridad = seguridad;
        this.bloqueo = bloqueo;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

     

    @Override
    public String toString() {
        return "Cuentas{" + "nombre=" + nombre + ", correo=" + correo + ", cuenta=" + cuenta + ", password=" + password + ", seguridad=" + seguridad + ", bloqueo=" + bloqueo + '}';
    }

    public Cuentas() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCuenta() {
        return cuenta;
    }

    public void setCuenta(String cuenta) {
        this.cuenta = cuenta;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSeguridad() {
        return seguridad;
    }

    public void setSeguridad(String seguridad) {
        this.seguridad = seguridad;
    }

    public Integer getBloqueo() {
        return bloqueo;
    }

    public void setBloqueo(Integer bloqueo) {
        this.bloqueo = bloqueo;
    }
    
    
}
