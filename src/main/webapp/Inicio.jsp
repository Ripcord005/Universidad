<%-- 
    Document   : Inicio
    Created on : 11/06/2025, 5:38:23 p. m.
    Author     : jhoan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Universidad Nueva Granada</title>
        <link rel="icon" type="image/x-icon" href="Image/favicon.ico"/>
        <style>

            body {
                margin: 0;
                font-family: Arial, sans-serif;
                background-image: url("Image/Foto-principal-Colombia.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
            }

            .navbar {
                background-color: #e63946;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 10px 20px;
            }
            .navbar a {
                color: #ffffff;
                font-weight: bolder;
                text-decoration: none;
                padding: 10px 15px;
                transition: background 0.3s;
            }
            .navbar a:hover {
                background-color: #d62828;
                border-radius: 4px;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }
            .dropdown a {
                cursor: pointer;
            }
            .dropdown-content {
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                background-color: #e63946;
                min-width: 160px;
                box-shadow: 0 0 10px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .dropdown-content a {
                display: block;
                text-align: left;
                padding: 12px 16px;
            }
            .dropdown:hover .dropdown-content {
                display: block;
            }
            .dropdown-content a:hover {
                background-color: #d62828;
            }

            .section-container {
                background-color: aliceblue;
                padding: 20px;
                border-radius: 8px;
                margin: 20px;
            }
            .offers-header {
                text-align: center;
                margin-bottom: 20px;
            }
            .offers-header h1 {
                font-size: 35px;
                color: #ffffff;
                font-weight: bolder;
                background-color: #e63946;
                padding: 10px;
                border-radius: 8px;
                display: inline-block;
            }
            .offers-container {
                display: flex;
                justify-content: space-between;
                gap: 20px;
            }
            .offer {
                background-color: #ffffff;
                padding: 15px;
                border-radius: 8px;
                flex: 1;
                box-shadow: 0 0 10px rgba(0,0,0,0.2);
                text-align: center;
            }
            .offer h2 {
                color: #000000;
                font-size: 30px;
                margin-bottom: 10px;
            }
            .offer p {
                font-size: 25px;
                font-weight: bold;
                margin: 5px 0;
            }

            .about-container {
                background-color: #ffd500;
                padding: 20px;
                border-radius: 8px;
                margin: 20px;
            }
            .about-header {
                text-align: center;
                margin-bottom: 20px;
            }
            .about-header h1 {
                font-size: 35px;
                color: #ffffff;
                font-weight: bolder;
                display: inline-block;
            }
            .about-content {
                display: flex;
                justify-content: space-around;
                gap: 20px;
            }
            .about-section {
                background-color: #ffffff;
                padding: 15px;
                border-radius: 8px;
                flex: 1;
                box-shadow: 0 0 10px rgba(0,0,0,0.2);
                text-align: center;
            }
            .about-section h2 {
                font-size: 30px;
                color: #000000;
                margin-bottom: 10px;
            }
            .about-section p {
                font-size: 25px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>

        <!-- Barra de navegación -->
        <div class="navbar">
            <div class="dropdown">
                <a href="javascript:void(0);">Iniciar Sesion ▼</a>
                <div class="dropdown-content">
                    <a href="Login/Login.Estudiantes.jsp">Estudiantes</a>
                    <a href="Login/Login.Maestros.jsp">Maestros</a>
                    <a href="Login/Login.Administrador.jsp">Administrativos</a>
                </div>
            </div>
            <a href="PerfilAdministrador/Registrar.jsp">Registrarse</a>
        </div>

        <!-- Sección de Ofertas -->
        <div class="section-container">
            <div class="offers-header">
                <h1>Ofertas</h1>
            </div>
            <div class="offers-container">
                <div class="offer">
                    <h2>Carrera Disponible</h2>
                    <br>
                    <p>info...</p>
                    <br>
                    <a href="PruebaAdminicion.jsp" style="text-decoration: none; color: inherit; font-weight: bold;">Presentar Prueba</a>
                </div>
                <div class="offer">
                    <h2>Curso Disponible</h2>
                    <br>
                    <p>info...</p>
                    <br>
                    <a href="PruebaAdminicion.jsp" style="text-decoration: none; color: inherit; font-weight: bold;">Presentar Prueba</a>
                </div>

                <div class="offer">
                    <h2>Carrera Disponible</h2>
                    <br>
                    <p>info...</p>
                    <br>
                    <a href="PruebaAdminicion.jsp" style="text-decoration: none; color: inherit; font-weight: bold;">Presentar Prueba</a>
                </div>
            </div>
        </div>

        <!-- Sección "Sobre Nosotros", Misión y Visión -->
        <div class="about-container">
            <div class="about-header">
                <h1>Bienvenidos a la Universidad Nueva Granada</h1>
            </div>
            <div class="about-content">
                <div class="about-section">
                    <h2>Sobre Nosotros</h2>
                    <p>La Universidad Nueva Granada es un referente de educación superior en Colombia, comprometida con la formación integral de sus estudiantes y el desarrollo sostenible del país.</p>
                </div>
                <div class="about-section">
                    <h2>Misión</h2>
                    <p>Brindar educación superior de calidad basada en la investigación, el emprendimiento y el desarrollo sostenible.</p>
                </div>
                <div class="about-section">
                    <h2>Visión</h2>
                    <p>Ser una universidad reconocida a nivel nacional e internacional por su excelencia académica, su contribución a la ciencia y la tecnología.</p>
                </div>
            </div>
        </div>

    </body>
