package com.UniversidadNuevaGranada.DAO;

import com.UniversidadNuevaGranada.Bean.Usuario;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {

    private final String jdbcURL = "jdbc:postgresql://localhost:5432/Uni";
    private final String jdbcUsername = "postgres";
    private final String jdbcPassword = "123456789";

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

            try (Connection connection = getConnection(); PreparedStatement stmt = connection.prepareStatement(INSERT_USUARIO_SQL)) {

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

    public List<Usuario> ObtenerUsuarios() {
        List<Usuario> Lista = new ArrayList<>();

        try (Connection connection = getConnection(); PreparedStatement ps = connection.prepareStatement(SELECT_USUARIO_SQL); ResultSet rs = ps.executeQuery()) {

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

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return Lista;
    }

    public boolean eliminarUsuario(String telefono) {
        Connection con = null;
        PreparedStatement pstmt = null;

        try {

            String query = "DELETE FROM \"Usuario\" WHERE \"NumeroDocumento\" = ?";

            pstmt = con.prepareStatement(query);
            pstmt.setString(1, telefono);

            return pstmt.executeUpdate() > 0;

        } catch (SQLException e) {
            System.out.println("Error al eliminar usuario: " + e.getMessage());
            return false;
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                System.out.println("Error al cerrar conexión: " + ex.getMessage());
            }
        }
    }

    public boolean actualizarUsuario(Usuario usuario) {
        Connection con = null;
        PreparedStatement pstmt = null;

        try {

            String query = "UPDATE \"Usuario\" SET \"NombreUsuario\"=?, \"ApellidoUsuario\"=?, \"CorreoUsuario\"=?, \"DireccionUsuario\"=? WHERE \"TelefonoUsuario\" = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, usuario.getNombreUsuario());
            pstmt.setString(2, usuario.getApellidoUsuario());
            pstmt.setString(3, usuario.getCorreoUsuario());
            pstmt.setString(4, usuario.getDireccionUsuario());
            pstmt.setString(5, usuario.getTelefonoUsuario());

            return pstmt.executeUpdate() > 0;
        } catch (Exception e) {
            System.out.println("Error al actualizar usuario: " + e.getMessage());
            return false;
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                System.out.println("Error al cerrar conexión: " + e.getMessage());
            }
        }
    }
}
