package dao;

import java.sql.*;

import model.Usuario;
import org.h2.engine.User;

public class UsuarioDao {
    public boolean inserirUsuario(Usuario user) {
        String sql = "INSERT INTO usuario (nome, email, cpf, cargo,senha) VALUES (?, ?, ?, ?, ?)";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            // Verifica se a conexão foi estabelecida com sucesso
            if (connection != null) {
                System.out.println("Conexão estabelecida com sucesso!");
            } else {
                System.out.println("Falha ao conectar-se ao banco de dados!");
                return false; // Retorna false se não foi possível estabelecer conexão
            }

            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            preparedStatement.setString(1, user.getNome());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCpf());
            preparedStatement.setString(4, user.getCargo());
            preparedStatement.setString(5, user.getSenha());


            int rowsAffected = preparedStatement.executeUpdate(); // Executar a instrução SQL

            preparedStatement.close(); // Fechar o PreparedStatement
            connection.close(); // Fechar a conexão com o banco de dados

            return rowsAffected > 0; // Retorna verdadeiro se pelo menos uma linha foi afetada
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Erro ao inserir usuário no banco de dados: " + e.getMessage());
            return false;
        }
    }



    public Usuario obterUsuarioPorCredenciais(String email, String senha) {
        String sql = "SELECT * FROM usuario WHERE email = ? AND senha = ? LIMIT 1";

        try (Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, senha);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    Usuario usuario = new Usuario();
                    usuario.setNome(resultSet.getString("nome"));
                    usuario.setEmail(resultSet.getString("email"));

                    return usuario;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Erro ao obter usuário por credenciais: " + e.getMessage());
        }

        return null;
    }
}
