<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/login.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        
        <div class="contenedor">
            <div>
                <img src="img/logo.jpg" alt="logo"/>
                <h1>PetSociety</h1>   
                <h2>Panel Administrativo</h2> 
            </div>
            
            <form method="POST" action="login">
                <input type="email" name="email" placeholder="Correo">
                <input type="password" name="password" placeholder="Contraseña">
                
               <button type="button" onclick="location.href='panelAdmin.jsp'" style="width: 100%; padding: 10px; background-color: #2e7d32; color: white; border: none; border-radius: 5px; cursor: pointer;">Ingresar</button>

            </form>
        </div>
        
        
    </body>
</html>
