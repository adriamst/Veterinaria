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
            }
            input, select {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            .btn-guardar {
                background-color: #2e7d32;
                color: white;
                border: none;
                padding: 12px;
                width: 100%;
                cursor: pointer;
                border-radius: 5px;
                font-size: 16px;
            }
        </style>
    </head>
    <body>
        <div class="form-container">
            <h2 style="text-align: center; color: #2e7d32;">🐾 Registrar Nueva Mascota</h2>
            <form>
                <label>Nombre de la Mascota:</label>
                <input type="text" placeholder="Ej. Max" required>
                
                <label>Especie:</label>
                <select>
                    <option>Perro</option>
                    <option>Gato</option>
                    <option>Ave</option>
                    <option>Otro</option>
                </select>
                
                <label>Raza:</label>
                <input type="text" placeholder="Ej. Labrador">
                
                <label>Nombre del Dueño:</label>
                <input type="text" placeholder="Nombre completo" required>
                
                <button type="button" class="btn-guardar" onclick="alert('¡Mascota registrada (Simulación)!')">Guardar Mascota</button>
                <button type="button" onclick="location.href='panelAdmin.jsp'" style="margin-top:10px; background:none; border:none; color:gray; cursor:pointer; width:100%;">Volver al Panel</button>
            </form>
        </div>
    </body>
</html>
