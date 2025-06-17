package com.UniversidadNuevaGranada.DAO;

import com.UniversidadNuevaGranada.Bean.Usuario;
import java.sql.*;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    private String jdbcURL = "jdbc:postgresql://localhost:5432/Uni";
    private String jdbcUsername = "postgres";
    private String jdbcPassword = "123456789";

    private static final String INSERT_USUARIO_SQL = "INSERT INTO \"Usuario\" ( \"Nombre\", \"TipoDocumento\", \"NumeroDocumento\", \"Genero\", \"GrupoSanguineo\", \"Correo\", \"Rol\") VALUES (?, ?, ?, ?, ?, ?, ?)";
private static final String SELECT_USUARIO_SQL = "SELECT \"Nombre\", \"TipoDocumento\", \"NumeroDocumento\", \"Genero\", \"GrupoSanguineo\", \"Correo\", \"Rol\" FROM \"Usuario\"";
    
    protected Connection getConnection() throws SQLException {
        Connection connection = null;
        try {
            Class.forName("org.postgresql.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
 
    public boolean registrarUsuario(Usuario usuario) {
        boolean registroExitoso = false;

        try {
          
            try (Connection connection = getConnection(); 
            PreparedStatement stmt = connection.prepareStatement(INSERT_USUARIO_SQL)) {

                stmt.setString(1, usuario.getNombre());
                stmt.setString(2, usuario.getTipoDocumento());
                stmt.setLong(3, Long.parseLong(usuario.getNumeroDocumento()));
                stmt.setString(4, usuario.getGenero());
                stmt.setString(5, usuario.getGrupoSanguineo());
                stmt.setString(6, usuario.getCorreo());
                stmt.setString(7, usuario.getRol());

                registroExitoso = stmt.executeUpdate() > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return registroExitoso;
    }

    public List<Usuario> ObtenerUsuarios() throws SQLException {
        List<Usuario> Lista = new ArrayList<>();

        try (Connection connection = getConnection();
                PreparedStatement ps = connection.prepareStatement(SELECT_USUARIO_SQL); 
                ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setNombre(rs.getString("Nombre"));
                usuario.setTipoDocumento(rs.getString("TipoDocumento"));
                usuario.setNumeroDocumento(String.valueOf(rs.getInt("NumeroDocumento")));
                usuario.setGenero(rs.getString("Genero"));
                usuario.setGrupoSanguineo(rs.getString("GrupoSanguineo"));
                usuario.setCorreo(rs.getString("Correo"));
                usuario.setRol(rs.getString("Rol"));
                Lista.add(usuario);
            }

        }catch(SQLException e){
            e.printStackTrace();
        }
        return Lista;
    }

}
