<%-- 
    Document   : Inicio
    Created on : 11/06/2025, 5:38:23 p. m.
    Author     : jhoan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Universidad Nueva Granada</title>
        <link rel="icon" type="image/x-icon" href="Image/favicon.ico"/>

        <style>
            body{
                background-image: url(Image/Foto-principal-Colombia.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                background-attachment: fixed;

            }
            .container {
                display: flex;
                justify-content: space-between;
                gap: 20px;
                text-align: center;
            }

            .section {
                background-color: #ffffff;
                padding: 15px;
                border-radius: 8px;
                flex: 1;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            }

            h2 {
                color: #000000;
                font-size: 30px;
                font-style: normal;
            }

            p {
                font-size: 25px;
                line-height: 1.0;
                font-style: normal;
                font-weight: bold;
            }
            .Cinta{
                background-color: #e63946;
                font-family: Arial, sans-serif;
                padding: 10px;
                position: relative;

            }
            .Cinta a{
                color: #ffffff;
                font-weight: bolder;
                text-decoration: none;
                padding: 14px 16px;
                display: inline-block;
            }
            .Desplegar-contenido {
                display: none;
                position: absolute;
                top: 100%;
                left: 0;
                background-color: #e63946;
                min-width: 160px;
                box-shadow: 0 0 10px rgba(0,0,0,0.2);
                z-index: 1;
            }
            .Desplegar-contenido a {
                display: block;
                text-align: left;
                padding: 12px 16px;
            }
            .DesplegarInicioSesion:hover .Desplegar-contenido{
                display: block;
            }
            .DesplegarInicioSesion{
                position: relative;
                display: inline-block;
            }
            .Desplegar-contenido a:hover {
                background-color: #d62828;
            }
        </style>
    </head>
    <body>

        <br>
        <br>
        <div class="Cinta">
            <div class="DesplegarInicioSesion">                
                <a href="javascript:void(0)"> Iniciar Sesion ▼</a>
                <div class="Desplegar-contenido">
                    <a href="Login/Login.Estudiantes.jsp" style="color: #ffffff; font-weight: bolder;"> Estudiantes </a>
                    <a href="Login/Login.Maestros.jsp" style="color: #ffffff; font-weight: bolder;"> Maestros </a>
                    <a href="Login/Login.Administrador.jsp" style="color: #ffffff; font-weight: bolder;"> Administrativos </a>
                </div>  
            </div>
            <a href="PerfilAdministrador/Registrar.jsp" style="color: #ffffff; font-weight: bolder;"> Registrarse </a>
        </div>


        <br><br>

        <div style="background-color: #ffd500; padding: 20px;">
            <div class="SobreNos">
                <h1 style="font-size: 35px; color: #ffffff; text-align: center; font-weight: bolder"> 
                    <b>Bienvenidos a la Universidad Nueva Granada</b>
                </h1>
                <div class="container">
                    <div class="section">
                        <h2>Sobre Nosotros</h2>
                        <p>La Universidad Nueva Granada es un referente de educación superior en Colombia, comprometida con la formación integral de sus estudiantes y el desarrollo sostenible del país</p>
                    </div>
                    <div class="section">
                        <h2>Misión</h2>
                        <p>Brindar educación superior de calidad basada en la investigación, el emprendimiento y el desarrollo sostenible</p>
                    </div>
                    <div class="section">
                        <h2>Visión</h2>
                        <p>Ser una universidad reconocida a nivel nacional e internacional por su excelencia académica, su contribución a la ciencia y la tecnología</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>




