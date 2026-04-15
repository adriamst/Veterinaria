<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario - PetSociety</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <style>
            .table-container { background: white; padding: 20px; border-radius: 10px; max-width: 800px; margin: 50px auto; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
            table { width: 100%; border-collapse: collapse; margin-top: 20px; }
            th, td { border: 1px solid #ddd; padding: 12px; text-align: left; }
            th { background-color: #f4f4f4; color: #333; }
        </style>
    </head>
    <body>
        <div class="table-container">
            <h2 style="text-align: center; color: #333;">💊 Inventario de Medicamentos</h2>
            <table>
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Categoría</th>
                        <th>Stock</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Antipulgas</td>
                        <td>Farmacia</td>
                        <td>15 unidades</td>
                        <td style="color: green;">Disponible</td>
                    </tr>
                    <tr>
                        <td>Vacuna Triple Felina</td>
                        <td>Vacunas</td>
                        <td>5 unidades</td>
                        <td style="color: orange;">Stock Bajo</td>
                    </tr>
                </tbody>
            </table>
            <button type="button" onclick="location.href='panelAdmin.jsp'" style="margin-top:20px; padding:10px; background:#333; color:white; border:none; border-radius:5px; cursor:pointer; width:100%;">Volver al Panel</button>
        </div>
    </body>
</html>
