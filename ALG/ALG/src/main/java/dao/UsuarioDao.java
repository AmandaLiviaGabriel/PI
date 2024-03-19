package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import model.Usuario;

public class UsuarioDao {
    public boolean inserirUsuario(Usuario user) {
        String sql = "INSERT INTO usuario (nome, email, cpf, cargo,senha, status) VALUES (?, ?, ?, ?, ?,?)";

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
            preparedStatement.setString(6, user.getStatus());


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

    public static boolean validarCPF(String cpf) {
        // Remover caracteres não numéricos
        cpf = cpf.replaceAll("[^0-9]", "");

        // Verificar se o CPF possui 11 dígitos
        if (cpf.length() != 11) {
            return false;
        }

        // Verificar se todos os dígitos são iguais
        if (cpf.matches("(\\\\d)\\\\1{10}")) {
            return false;
        }

        // Calcular e verificar o primeiro dígito verificador
        int soma = 0;
        for (int i = 0; i < 9; i++) {
            soma += Character.getNumericValue(cpf.charAt(i)) * (10 - i);
        }
        int primeiroDigito = 11 - (soma % 11);
        if (primeiroDigito > 9) {
            primeiroDigito = 0;
        }
        if (Character.getNumericValue(cpf.charAt(9)) != primeiroDigito) {
            return false;
        }

        // Calcular e verificar o segundo dígito verificador
        soma = 0;
        for (int i = 0; i < 10; i++) {
            soma += Character.getNumericValue(cpf.charAt(i)) * (11 - i);
        }
        int segundoDigito = 11 - (soma % 11);
        if (segundoDigito > 9) {
            segundoDigito = 0;
        }
        if (Character.getNumericValue(cpf.charAt(10)) != segundoDigito) {
            return false;
        }

        // CPF válido
        return true;
    }


    public List<Usuario> showUser(){
        String SQL = "SELECT * FROM usuario";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Usuario> users = new ArrayList<>();

            while (resultSet.next()) {

                int userId = resultSet.getInt("Id");
                String userName = resultSet.getString("Nome");
                String userEmail = resultSet.getString("Email");
                String userCPF = resultSet.getString("CPF");
                String userSenha = resultSet.getString("Senha");
                String userconfirmarSenha = resultSet.getString("ConfirmarSenha");
                String userCargo = resultSet.getString("Cargo");
                String userStatus = resultSet.getString("Status");


                Usuario user = new Usuario(userId, userName, userEmail, userCPF, userSenha, userconfirmarSenha, userCargo, userStatus);
                users.add(user);
            }
            System.out.println("success in select * from usuario");

            return users;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }

    }

    public void updateStatus(Usuario user){
        String SQL = "UPDATE Usuarios SET status = ? WHERE ID = ?";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, user.getStatus());
            preparedStatement.setInt(2, user.getId());
            preparedStatement.execute();

            System.out.println("success in update profile");

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }
    }
}
