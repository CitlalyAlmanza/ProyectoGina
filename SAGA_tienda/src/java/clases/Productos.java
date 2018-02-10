package clases;

import java.io.Serializable;

 
public class Productos implements Serializable{
    
    private Integer id;
    private String nombre;
    private  String categoria;
    private String descripcion;
    private Integer existencia;
    private Integer vendidos;
    private Float precio;
    private String imagen;

    public Productos(Integer id, String nombre, String categoria, String descripcion, Integer existencia, Float precio, String imagen) {
        this.id = id;
        this.nombre = nombre;
        this.categoria = categoria;
        this.descripcion = descripcion;
        this.existencia = existencia;
        this.precio = precio;
        this.imagen = imagen;
    }
    
    public Integer getVendidos(){
        return vendidos;
    }
    public void setVendidos(Integer n){
        this.vendidos=n;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

     

    @Override
    public String toString() {
        return "Productos{" + "nombre=" + nombre + ", categoria=" + categoria + ", descripcion=" + descripcion + ", existencia=" + existencia + ", precio=" + precio + ", imagen=" + imagen + '}';
    }

    public Productos() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getExistencia() {
        return existencia;
    }

    public void setExistencia(Integer existencia) {
        this.existencia = existencia;
    }

    public Float getPrecio() {
        return precio;
    }

    public void setPrecio(Float precio) {
        this.precio = precio;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
    
}
