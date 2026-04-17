<%@page import="com.pe.vet.veterinaria.model.Mascota"%>
<%@page import="java.util.List"%>
<%@page import="com.pe.vet.veterinaria.dao.MascotaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pacientes - PetSociety</title>
        <link rel="stylesheet" href="css/login.css">
        <style>
            .tabla-container { 
                max-width: 900px; 
                margin: 40px auto; 
                background: white; 
                padding: 25px; 
                border-radius: 12px; 
                box-shadow: 0 4px 15px rgba(0,0,0,0.1); 
                font-family: Arial, sans-serif;
            }
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th { background-color: #2e7d32; color: white; padding: 12px; text-align: left; }
            td { padding: 12px; border-bottom: 1px solid #eee; color: #333; }
            tr:hover { background-color: #f1f8e9; }
            .btn-volver { 
                display: inline-block; 
                margin-top: 20px; 
                color: #2e7d32; 
                text-decoration: none; 
                font-weight: bold; 
            }
            .header-tabla {
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .btn-nuevo {
                background: #2e7d32;
                color: white;
                padding: 10px 15px;
                border-radius: 5px;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="tabla-container">
            <div class="header-tabla">
                <h1 style="color: #2e7d32; margin: 0;">Pacientes Registrados</h1>
                <a href="registroMascota.jsp" class="btn-nuevo">+ Nueva Mascota</a>
            </div>
            
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Especie</th>
                        <th>Raza</th>
                        <th>Dueño</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Llamamos al DAO y pedimos la lista
                        MascotaDAO dao = new MascotaDAO();
                        List<Mascota> lista = dao.listar();
                        
                        // Este ciclo "dibuja" una fila por cada mascota encontrada
                        for(Mascota m : lista) {
                    %>
                    <tr>
                        <td><%= m.getId() %></td>
                        <td><%= m.getNombre() %></td>
                        <td><%= m.getEspecie() %></td>
                        <td><%= m.getRaza() %></td>
                        <td><%= m.getDueño() %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            
            <a href="panelAdmin.jsp" class="btn-volver">← Volver al Panel</a>
        </div>
    </body>
</html>