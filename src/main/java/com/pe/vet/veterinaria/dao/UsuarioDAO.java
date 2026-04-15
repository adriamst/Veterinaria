package com.pe.vet.veterinaria.dao;

import com.pe.vet.veterinaria.model.Usuario;
import com.pe.vet.veterinaria.util.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UsuarioDAO {

    
        public Usuario validarLogin (String correo, String password){
            Usuario usuario = null;
            
            try{
                Connection con = Conexion.getConnection();
                
                String sql = "SELECT * FROM usuario WHERE correo =? AND PASSWORD = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                
                
                ps.setString(1, correo);
                ps.setString(2, password);
                
                ResultSet rs  = ps.executeQuery();
                
                if(rs.next()){
                    usuario = new Usuario();
                    usuario.setId(rs.getInt("id"));
                    usuario.setCorreo(rs.getString("correo"));
                    usuario.setPassword(rs.getString("password"));
                    usuario.setRol(rs.getString("rol"));                
                }
            
            } catch (Exception e) {
            e.printStackTrace();
            
            }
        
        return usuario;
        
        }
    
       
        
        
    
}
