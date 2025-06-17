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

            /*            body {
                            margin: 0;
                            padding: 0;
                            height: 100vh;
                            font-family: 'Segoe UI', sans-serif;
                            background-size: cover;
                            background-position: center;
                            background-repeat: no-repeat;
                            animation: cambioFondo 50s infinite;
                        }
            
                        @keyframes cambioFondo{
            
                            0% {
                                background-image: url("../Image/15042025-Carreras-mas-buscadas.jpg");
                            }
                            33% {
                                background-image: url("../Image/promocion-estudiante.jpg");
                            }
                            66% {
                                background-image: url("../Image/universidad_nacional_de_colombia.jpg");
                            }
                            100% {
                                background-image: url("../Image/favicon.ico");
                            }
                        }
            */
            body {
                margin: 0;
                padding: 0;
                height: 100vh;
                font-family: 'Segoe UI', sans-serif;
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
                animation: cambioFondo 30s infinite;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            @keyframes cambioFondo {
                0%   {
                    background-image: url('../Image/fondo1.jpg');
                }
                33%  {
                    background-image: url('../Image/fondo2.jpg');
                }
                66%  {
                    background-image: url('../Image/fondo3.jpg');
                }
                100% {
                    background-image: url('../Image/fondo1.jpg');
                }
            }

            .login-container {
                background-color: rgba(255, 255, 255, 0.85);
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 320px;
                text-align: center;
            }

            h2 {
                margin-bottom: 20px;
                font-weight: 500;
                color: #003366;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 5px;
                font-size: 14px;
                outline: none;
                transition: border 0.2s ease;
            }

            input[type="text"]:focus,
            input[type="password"]:focus {
                border-color: #004080;
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
                transition: background-color 0.3s ease;
            }

            button:hover {
                background-color: #0059b3;
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

