<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Mascota - PetSociety</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <style>
            .form-container {
                background: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 15px rgba(0,0,0,0.1);
                max-width: 400px;
                margin: 50px auto;
                font-family: Arial, sans-serif;
            }
            input {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
                display: block;
                box-sizing: border-box;
            }
            .btn-guardar {
                background-color: #2e7d32;
                color: white;
                border: none;
                padding: 12px;
                width: 100%;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 10px;
            }
            .btn-guardar:hover {
                background-color: #1b5e20;
            }
            label {
                font-weight: bold;
                color: #333;
            }
        </style>
    </head>
    <body>
        <div class="form-container">
            <h2 style="text-align: center; color: #2e7d32;">Registrar Paciente</h2>
            <p style="text-align: center;">Ingresa los datos para la base de datos</p>
            <hr>
            
            <form action="MascotaServlet" method="POST">
                <label>Nombre de la Mascota:</label>
                <input type="text" name="txtnombre" placeholder="Ej. Bobby" required>
                
                <label>Especie:</label>
                <input type="text" name="txtespecie" placeholder="Ej. Perro" required>
                
                <label>Raza:</label>
                <input type="text" name="txtraza" placeholder="Ej. Labrador" required>
                
                <label>Dueño:</label>
                <input type="text" name="txtdueño" placeholder="Nombre completo" required>
                
                <button type="submit" class="btn-guardar">Guardar Mascota</button>
            </form>
            
            <div style="text-align: center; margin-top: 20px;">
                <a href="panelAdmin.jsp" style="color: #666; text-decoration: none; font-size: 14px;">← Volver al Panel</a>
            </div>
        </div>
    </body>
</html>
