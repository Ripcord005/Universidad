<%-- 
    Document   : InicioAdministrador
    Created on : 15/06/2025, 8:26:28 p. m.
    Author     : jhoan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Recuperar el nombre y la foto del administrador desde la sesión
    String adminName = (String) session.getAttribute("adminName");
    if (adminName == null) {
        adminName = "Administrador";
    }
    String adminPhoto = (String) session.getAttribute("adminPhoto");
    if (adminPhoto == null) {
        // Ruta de una imagen por defecto si no hay foto registrada
        adminPhoto = "images/defaultAdmin.jpg";
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio Administrador - Universidad Nueva Granada</title>
    <style>
        /* Reiniciamos algunos estilos */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        
        /* Barra de navegación principal para administradores (tema rojo) */
        .navbar {
            background-color: #e63946; /* Rojo para administradores */
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
            position: relative;
        }
        
        .navbar a {
            color: #ffffff;
            text-decoration: none;
            padding: 10px 15px;
            font-weight: bold;
            transition: background 0.3s;
        }
        
        .navbar a:hover {
            background-color: #d62828;
            border-radius: 4px;
        }
        
        /* Contenedor del perfil del administrador */
        .profile {
            display: flex;
            align-items: center;
            color: #ffffff;
        }
        
        .profile img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 8px;
        }
        
        /* Contenido principal de la página */
        .content {
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Barra de navegación -->
    <div class="navbar">
        <div class="menu">
            <a href="Registrar.jsp">Registrar Nuevo</a>
            <a href="usuarios.jsp">Ver Usuarios</a>
            <a href="reportes.jsp">Reportes</a>
            <a href="../Inicio.jsp">Log Out</a>
        </div>
        <!-- Perfil del administrador (nombre y foto) -->
        <div class="profile">
            <img src="<%= adminPhoto %>" alt="Foto de perfil">
            <span><%= adminName %></span>
        </div>
    </div>
    
    <div class="content">
        <h1>Bienvenido, <%= adminName %></h1>
        <p>Aquí encontrarás toda la información y herramientas para la administración.</p>
    </div>
</body>
</html>

