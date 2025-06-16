<%-- 
    Document   : Login
    Created on : 11/06/2025, 7:46:35 p. m.
    Author     : jhoan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Login - Estudiantes</title>
        <style>
            .login-container {
                background-color: white;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
                max-width: 350px;
                margin: auto;
                text-align: center;
                border-top: 5px solid #004080; /* borde azul */
            }
            input {
                width: 75%;
                padding: 10px;
                margin: 8px 0;
            }
            button {
                background-color: #004080;
                color: white;
                padding: 10px;
                border: none;
                cursor: pointer;
                width: 80%;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h2>Iniciar Sesión</h2>
            <h2>Estudiantes</h2>
            <form action="../PerfilEstudiante/InicioEstudiante.jsp" method="get">
                <label for="Usuario">Usuario:</label>
                <br>
                <input type="text" id="Usuario" name="Usuario" >
                <br>
                <label for="Contraseña">Contraseña:</label>
                <br>
                <input type="password" id="Contraseña" name="Contraseña" >
                <br>
                    <button type="submit">Ingresar</button>
                </form>
        </div>
    </body>
</html>

