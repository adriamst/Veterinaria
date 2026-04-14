package com.pe.vet.veterinaria.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author minig
 */
public class Conexion {
    private static final String URL = "jdbc:mysql://localhost:3306/veterinaria";
    private static final String USER = "root";
    private static final String PASSWORD = "root"; 

    public static Connection getConexion() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexion exitosa a la BD");
        } catch (Exception e) {
            System.out.println("Error en la conexion: " + e.getMessage());
        }
        return con;
    }

    public static Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}   

