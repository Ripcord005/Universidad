package com.UniversidadNuevaGranada.DAO;

import com.UniversidadNuevaGranada.Bean.Usuario;
import java.sql.*;

public class UsuarioDAO {

    private String jdbcURL = "jdbc:postgresql://localhost:5432/Uni";
    private String jdbcUsername = "postgres";
    private String jdbcPassword = "123456789";

    private static final String INSERT_USUARIO_SQL = "INSERT INTO \"Usuario\" ( \"Nombre\", \"TipoDocumento\", \"NumeroDocumento\", \"Genero\", \"GrupoSanguineo\", \"Correo\", \"Rol\") VALUES (?, ?, ?, ?, ?, ?, ?)";

    public boolean registrarUsuario(Usuario usuario) {
        boolean registroExitoso = false;

        try {
            // Cargar el driver
            Class.forName("org.postgresql.Driver");

            try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword); PreparedStatement stmt = connection.prepareStatement(INSERT_USUARIO_SQL)) {

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
}
