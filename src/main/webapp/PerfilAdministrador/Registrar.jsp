<%-- 
    Document   : Registrar
    Created on : 11/06/2025, 8:55:51 p. m.
    Author     : jhoan
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.UniversidadNuevaGranada.Bean.Usuario, com.UniversidadNuevaGranada.DAO.UsuarioDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Usuario</title>
    <style>
        .Registro-container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
            max-width: 450px;
            margin: auto;
            text-align: center;
            font-family: Arial, sans-serif;
        }
        input, select {
            width: 75%;
            padding: 10px;
            margin: 8px 0;
        }
        button {
            background-color: #d62828;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            width: 80%;
        }
        label {
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="Registro-container">
    <%
        boolean showForm = true;

        if ("POST".equalsIgnoreCase(request.getMethod())) {
            String Nombre = request.getParameter("Nombre");
            String TipoDocumento = request.getParameter("TipoDocumento");
            String NumeroDocumento = request.getParameter("NumeroDocumento");
            String Genero = request.getParameter("Genero");
            String GrupoSanguineo = request.getParameter("GrupoSanguineo");
            String Correo = request.getParameter("Correo");
            String Rol = request.getParameter("Rol");

            Usuario usuario = new Usuario();
            usuario.setNombre(Nombre);
            usuario.setTipoDocumento(TipoDocumento);
            usuario.setNumeroDocumento(NumeroDocumento);
            usuario.setGenero(Genero);
            usuario.setGrupoSanguineo(GrupoSanguineo);
            usuario.setCorreo(Correo);
            usuario.setRol(Rol);

            UsuarioDAO dao = new UsuarioDAO();
            boolean registroExitoso = dao.registrarUsuario(usuario);

            if (registroExitoso) {
                out.println("<h3>¡Registro exitoso!</h3>");
                showForm = false;
            } else {
                out.println("<h3>Error en el registro. Por favor, intente nuevamente.</h3>");
            }
        }
    %>

    <% if (showForm) { %>
        <h2>Registro de Usuario</h2>
        <form action="Registrar.jsp" method="POST">
            <label for="Nombre">Nombres Completos:</label><br>
            <input type="text" id="Nombre" name="Nombre" required><br>

            <label for="TipoDocumento">Tipo de Documento:</label><br>
            <select id="TipoDocumento" name="TipoDocumento" required>
                <option value="CC">Cédula de Ciudadanía</option>
                <option value="TI">Tarjeta de Identidad</option>
                <option value="CE">Cédula de Extranjería</option>
            </select><br>

            <label for="NumeroDocumento">Número de Documento:</label><br>
            <input type="text" id="NumeroDocumento" name="NumeroDocumento" required><br>

            <label for="Genero">Género:</label><br>
            <select id="Genero" name="Genero" required>
                <option value="Masculino">Masculino</option>
                <option value="Femenino">Femenino</option>
            </select><br>

            <label for="GrupoSanguineo">Tipo de Sangre:</label><br>
            <select id="GrupoSanguineo" name="GrupoSanguineo" required>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="AB+">AB+</option>
                <option value="AB-">AB-</option>
            </select><br>

            <label for="Correo">Correo Electrónico:</label><br>
            <input type="email" id="Correo" name="Correo" required><br>

            <label for="Rol">Rol:</label><br>
            <select id="Rol" name="Rol" required>
                <option value="Estudiante">Estudiante</option>
                <option value="Maestro">Maestro</option>
                <option value="Administrador">Administrador</option>
            </select><br>

            <button  type="submit">Registrarse</button><br>
        </form>
    <% } %>
</div>
</body>
</html>


