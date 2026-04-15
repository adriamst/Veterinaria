<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrativo - PetSociety</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
        <style>
            .admin-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                gap: 20px;
                padding: 50px;
            }
            .card {
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                width: 200px;
                text-align: center;
                transition: transform 0.3s;
                cursor: pointer;
            }
            .card:hover {
                transform: translateY(-5px);
                background-color: #f0f0f0;
            }
            .card h3 { color: #2e7d32; } /* Un verde similar al de su botón */
        </style>
    </head>
    <body>
        <div style="text-align: center; margin-top: 30px;">
            <h1>Bienvenido, Administrador</h1>
            <p>Seleccione una opción para gestionar la veterinaria</p>
        </div>

        <div class="admin-container">
           <div class="card" onclick="location.href='registroMascota.jsp'">
                <h3>🐾 Mascotas</h3>
                <p>Registrar y ver pacientes</p>
            </div>

           <div class="card" onclick="location.href='registroCita.jsp'">
                <h3>📅 Citas</h3>
                <p>Programar atención</p>
            </div>

            <div class="card" onclick="location.href='registroCita.jsp'">
                <h3>💊 Inventario</h3>
                <p>Medicamentos y stock</p>
            </div>
            
            <div class="card" onclick="location.href='${pageContext.request.contextPath}/index.jsp'">
                <h3 style="color: red;">🚪 Salir</h3>
                <p>Cerrar sesión</p>
            </div>
        </div>
    </body>
</html>
