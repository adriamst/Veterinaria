<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda de Citas - PetSociety</title>
        <link rel="stylesheet" type="text/css" href="css/login.css">
        <style>
            .form-container { background: white; padding: 30px; border-radius: 10px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); max-width: 450px; margin: 50px auto; }
            input, select, textarea { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ccc; border-radius: 5px; }
            .btn-guardar { background-color: #1976d2; color: white; border: none; padding: 12px; width: 100%; cursor: pointer; border-radius: 5px; }
        </style>
    </head>
    <body>
        <div class="form-container">
            <h2 style="text-align: center; color: #1976d2;">📅 Programar Cita Médica</h2>
            <form>
                <label>Seleccionar Mascota:</label>
                <select>
                    <option>Cargando mascotas...</option>
                </select>
                
                <label>Fecha:</label>
                <input type="date" required>
                
                <label>Hora:</label>
                <input type="time" required>
                
                <label>Motivo de la consulta:</label>
                <textarea rows="3" placeholder="Ej. Vacunación o chequeo general"></textarea>
                
                <button type="button" class="btn-guardar" onclick="alert('Cita agendada correctamente')">Agendar Cita</button>
                <button type="button" onclick="location.href='panelAdmin.jsp'" style="margin-top:10px; background:none; border:none; color:gray; cursor:pointer; width:100%;">Volver al Panel</button>
            </form>
        </div>
    </body>
</html>
