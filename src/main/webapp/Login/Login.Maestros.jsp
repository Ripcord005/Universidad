<%-- 
    Document   : Login.Maestros
    Created on : 12/06/2025, 8:23:23 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Login - Maestros</title>
  <style>
    .login-container {
      background-color: white;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0px 0px 10px rgba(0,0,0,0.2);
      max-width: 350px;
      margin: auto;
      text-align: center;
      border-top: 5px solid #2a9d8f; /* borde verde */
    }
    input {
      width: 75%;
      padding: 10px;
      margin: 8px 0;
    }
    button {
      background-color: #2a9d8f;
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
    <h2>Maestros</h2>
    <form action="Login.Maestros.jsp" method="POST">
      <label for="Usuario">Usuario:</label>
      <br>
      <input type="text" id="Usuario" name="Usuario" required>
      <br>
      <label for="Contraseña">Contraseña:</label>
      <br>
      <input type="password" id="Contraseña" name="Contraseña" required>
      <br>
      <button type="submit">Ingresar</button>
    </form>
  </div>
</body>
</html>


