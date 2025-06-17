<%-- 
    Document   : ListaUsuarios
    Created on : 17/06/2025, 6:44:15 a. m.
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.List"%>
<%@page import= "com.UniversidadNuevaGranada.Bean.Usuario"%>
<%@page import= "com.UniversidadNuevaGranada.DAO.UsuarioDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios Registrados</title>
        <style>
            body{
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                margin: 20px;
            }
            h1{
                text-align: center;
                color: #004080;
                
            }
            table{
                border-collapse: collapse;
                width: 90%;
                margin: auto;
                background-color: #f
                    fffff;
                box-shadow: 0 0 5px rgba(0,0,0,0,2);
            }
            th , td{
                border: 1px solid #ddd;
                padding: 10px;
                text-align: center;
            }
            th{
                background-color: #d62828;
                color: #fff;
            }
            tr:nth-child(even){
                background-color: #f9f9f;
            }
        </style>
    </head>
    <body>
        <h1> Usuarios </h1>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Tipo de Documento</th>
                <th>Numero de Documento</th>
                <th>Genero</th>
                <th>Grupo Sanguineo</th>
                <th>Correo</th>
                <th>Rol</th>
            </tr>
            <% 
         UsuarioDAO usuarioDAO = new UsuarioDAO();
         List<Usuario> ListaUsuarios = usuarioDAO.ObtenerUsuarios();
         if(ListaUsuarios != null && !ListaUsuarios.isEmpty()){
         for(Usuario usuario : ListaUsuarios){
            %>

            <tr>
                <td><%= usuario.getNombre()%></td>
                <td><%= usuario.getTipoDocumento()%></td>
                <td><%= usuario.getNumeroDocumento()%></td>
                <td><%= usuario.getGenero()%></td>
                <td><%= usuario.getGrupoSanguineo()%></td>
                <td><%= usuario.getCorreo()%></td>
                <td><%= usuario.getRol()%></td>
            </tr>

            <%
                }
}else{
            %>
            <tr>
                <td colspan="9"> No se encontraron usuarios registrados </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
