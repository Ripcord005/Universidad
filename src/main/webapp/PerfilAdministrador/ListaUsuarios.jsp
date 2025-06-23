<%-- 
    Document   : ListaUsuarios
    Created on : 17/06/2025, 6:44:15 a. m.
    Author     : SENA
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="com.UniversidadNuevaGranada.Bean.Usuario" %>
<%@ page import="com.UniversidadNuevaGranada.DAO.UsuarioDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Usuarios Registrados</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 20px;
        }
        h1 {
            text-align: center;
            color: #004080;
        }
        table {
            border-collapse: collapse;
            width: 90%;
            margin: auto;
            background-color: #ffffff;
            box-shadow: 0 0 5px rgba(0,0,0,0.2);
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #d62828;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        /* Estilos para el formulario de búsqueda */
        .search-form {
            text-align: center;
            margin-bottom: 20px;
        }
        .search-form input[type="text"] {
            padding: 8px;
            width: 250px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .search-form button {
            padding: 8px 12px;
            background-color: #004080;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .search-form button:hover {
            background-color: #003366;
        }
        /* Estilos para los enlaces de acciones */
        .action-link {
            text-decoration: none;
            font-weight: bold;
            color: #004080;
            margin: 0 4px;
        }
        .action-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Usuarios Registrados</h1>
    
    <!-- Formulario de búsqueda -->
    <div class="search-form">
        <form action="ListaUsuarios.jsp" method="get">
            <input type="text" name="buscarNumero" placeholder="Buscar por Número de Documento" />
            <button type="submit">Buscar</button>
        </form>
    </div>
    
    <table>
        <tr>
            <th>Nombre</th>
            <th>Tipo de Documento</th>
            <th>Número de Documento</th>
            <th>Género</th>
            <th>Grupo Sanguíneo</th>
            <th>Correo</th>
            <th>Rol</th>
            <th>Acciones</th>
        </tr>
        <%
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            String buscarNumero = request.getParameter("buscarNumero");
            List<Usuario> listaUsuarios;
            
            if(buscarNumero != null && !buscarNumero.trim().isEmpty()){
                // Obtiene la lista completa y la reordena
                List<Usuario> fullList = usuarioDAO.ObtenerUsuarios();
                List<Usuario> matchingList = new ArrayList<Usuario>();
                List<Usuario> nonMatchingList = new ArrayList<Usuario>();
                
                // Separa los usuarios que coinciden exactamente con el número buscado
                for(Usuario u : fullList) {
                    if(u.getNumeroDocumento().equals(buscarNumero.trim())) {
                        matchingList.add(u);
                    } else {
                        nonMatchingList.add(u);
                    }
                }
                // Une ambas listas: coincidencias primero
                listaUsuarios = new ArrayList<Usuario>();
                listaUsuarios.addAll(matchingList);
                listaUsuarios.addAll(nonMatchingList);
            } else {
                listaUsuarios = usuarioDAO.ObtenerUsuarios();
            }
            
            if(listaUsuarios != null && !listaUsuarios.isEmpty()){
                for(Usuario usuario : listaUsuarios){
        %>
        <tr>
            <td><%= usuario.getNombre() %></td>
            <td><%= usuario.getTipoDocumento() %></td>
            <td><%= usuario.getNumeroDocumento() %></td>
            <td><%= usuario.getGenero() %></td>
            <td><%= usuario.getGrupoSanguineo() %></td>
            <td><%= usuario.getCorreo() %></td>
            <td><%= usuario.getRol() %></td>
            <td>
                <!-- Enlaces para editar y eliminar; se asume que se usa el número de documento como identificador -->
                <a class="action-link" href="EditarUsuario.jsp?id=<%= usuario.getNumeroDocumento() %>">Editar</a> |
                <a class="action-link" href="EliminarUsuario.jsp?id=<%= usuario.getNumeroDocumento() %>" onclick="return confirm('¿Está seguro que desea eliminar este usuario?');">Eliminar</a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="8">No se encontraron usuarios registrados.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>


