<%-- 
    Document   : Inicio
    Created on : 15/06/2025, 7:28:48 p. m.
    Author     : jhoan
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Recuperar el nombre y la foto del estudiante desde la sesión
    String studentName = (String) session.getAttribute("studentName");
    if(studentName == null) {
        studentName = "Estudiante";
    }
    String studentPhoto = (String) session.getAttribute("studentPhoto");
    if(studentPhoto == null) {
        // Ruta de una imagen por defecto si no hay foto registrada
        studentPhoto = "images/defaultStudent.jpg";
    }
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio Estudiantes - Universidad Nueva Granada</title>
    <style>
        /* Reiniciamos algunos estilos */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }
        
        /* Barra de navegación principal */
        .navbar {
            background-color: #004080; /* Azul para estudiantes */
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
            background-color: #003366;
            border-radius: 4px;
        }
        
        /* Contenedor del perfil del estudiante */
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
    <div class="navbar">
        <div class="menu">
            <a href="verNotas.jsp">Ver notas</a>
            <a href="horario.jsp">Horario</a>
            <a href="materialClase.jsp">Material de clase</a>
            <a href="mensajesMaestros.jsp">Mensajes de maestros</a>
            <a href="../Inicio.jsp">Log Out</a>
        </div>
        <!-- Perfil del estudiante (nombre y foto) -->
        <div class="profile">
            <img src="<%=studentPhoto %>" alt="Foto de perfil">
            <span><%=studentName %></span>
        </div>
    </div>
    
    <div class="content">
        <h1>Bienvenido, <%=studentName %></h1>
        <p>Aquí encontrarás toda la información y recursos para tu carrera.</p>
    </div>
</body>
</html>


