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

            * {
                box-sizing: border-box;
            }

            html, body {
                margin: 0;
                padding: 0;
                height: 100%;
                font-family: 'Segoe UI', sans-serif;
            }

            body {
                margin: 0;
                padding: 0;
                height: 100vh;
                font-family: 'Segoe UI', sans-serif;
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                animation: cambioFondo 20s infinite;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            @keyframes cambioFondo {
                0%   {
                    background-image: url('../Image/15042025-Carreras-mas-buscadas.jpg');
                }
                33%  {
                    background-image: url('../Image/Foto-principal-Colombia.jpg');
                }
                66%  {
                    background-image: url('../Image/promocion-estudiante.jpg');
                }
                100% {
                    background-image: url('../Image/15042025-Carreras-mas-buscadas.jpg');
                }
            }

            .login-container {
                background-color: rgba(255, 255, 255, 0.85);
                padding: 60px 50px;
                border-radius: 20px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
                width: 100%;
                max-width: 500px;
                text-align: center;
                transition: transform 0.3s ease;
                font-size: 18px;
            }

            h2 {
                margin-bottom: 30px;
                font-weight: 600;
                font-size: 32px;
                color: #003366;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 12px;
                margin-bottom: 20px;
                border: 1px solid #ccc;
                border-radius: 25px;
                font-size: 14px;
                outline: none;
                transition: border 0.3s, box-shadow 0.3s;
                box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05);
            }

            input[type="text"]:focus,
            input[type="password"]:focus {
                border-color: #004080;
                box-shadow: 0 0 6px rgba(0, 64, 128, 0.4);
            }

            button {
                background-color: #004080;
                color: white;
                padding: 12px;
                border: none;
                border-radius: 5px;
                width: 100%;
                font-size: 15px;
                cursor: pointer;
                transition: background-color 0.3s ease,  transform 0.2s ease;
                box-shadow: 0 4px 12px rgba(0, 64, 128, 0.2);
                margin-top: 10px;
                margin-bottom: 10px;
            }

            button:hover {
                background-color: #0059b3;
                transform: translateY(-2px);
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

