<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Panel Administrativo - PetSociety</title>
        <style>
            body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }
            .welcome-section { text-align: center; margin-top: 50px; }
            .admin-container {
                display: flex;
                justify-content: center;
                gap: 20px;
                margin-top: 40px;
                flex-wrap: wrap;
            }
            .card {
                background: white;
                padding: 30px;
                border-radius: 15px;
                text-align: center;
                box-shadow: 0 4px 15px rgba(0,0,0,0.1);
                cursor: pointer;
                width: 200px;
                transition: transform 0.3s;
            }
            .card:hover { transform: translateY(-10px); }
            .card h3 { color: #2e7d32; }
            .btn-salir { color: red !important; }
        </style>
    </head>
    <body>
        
        <div class="welcome-section">
            <h1>Bienvenido al Sistema PetSociety</h1>
            <p>Seleccione una opción para gestionar la veterinaria</p>
        </div>

        <div class="admin-container">
            <div class="card" onclick="location.href='mascotas.jsp'">
                <h3>🐾 Mascotas</h3>
                <p>Gestionar pacientes</p>
            </div>

            <div class="card" onclick="location.href='registroCita.jsp'">
                <h3>📅 Citas</h3>
                <p>Programar atención</p>
            </div>

            <div class="card" onclick="location.href='inventario.jsp'">
                <h3>💊 Inventario</h3>
                <p>Medicamentos y stock</p>
            </div>
            
            <div class="card" onclick="location.href='index.jsp'">
                <h3 class="btn-salir">🚪 Salir</h3>
                <p>Cerrar sesión</p>
            </div>
        </div>

    </body>
</html>
