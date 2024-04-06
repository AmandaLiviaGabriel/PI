package dao;


import model.Produto;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ProdutoDao {

    private static final String URL = "jdbc:h2:~/test";

    private static final String USERNAME =  "sa";

    private static final String PASSWORD =  "sa";

    public  static void addProduct(Produto produto){
        String sql = "INSERT INTO produtos (nome, avaliacao, descricao, preco, qtdEstoque, status) VALUES (?, ?, ?, ?, ?, ?)";

        try(Connection conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            PreparedStatement smt = conn.prepareStatement(sql)) {

            smt.setString(1, produto.getNome());
            smt.setString(2, produto.getAvaliacao());
            smt.setString(3, produto.getDescricao());
            smt.setDouble(4, produto.getPreco());
            smt.setInt(5, produto.getQtdEstoque());
            smt.setString(6, "Ativo");

            smt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    public List<Produto> showProduto(){

        String SQL = "SELECT * FROM produtos";

        try {

            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            ResultSet resultSet = preparedStatement.executeQuery();

            List<Produto> prods = new ArrayList<>();

            while (resultSet.next()) {

                int id = resultSet.getInt("id");
                String nome = resultSet.getString("nome");
                double avaliacao = resultSet.getDouble("avaliacao");
                String descricao = resultSet.getString("descricao");
                double preco = resultSet.getDouble("preco");
                int qtdEstoque = resultSet.getInt("qtdEstoque");
                String status = resultSet.getString("status");


                Produto prod = new Produto(id, nome, avaliacao, descricao, preco, qtdEstoque);
                prod.setId(id);
                prod.setNome(nome);
                prod.setAvaliacao(avaliacao);
                prod.setDescricao(descricao);
                prod.setPreco(preco);
                prod.setQtdEstoque(qtdEstoque);
                prod.setStatus(status);
                prods.add(prod);
            }
            System.out.println("success in select * from user");

            return prods;

        } catch (Exception e) {

            System.out.println("fail in database connection");

            return Collections.emptyList();

        }


    }

    public void updateProduct(Produto prod) {
        String SQL = "UPDATE Produtos SET nome = ?, avaliacao = ?, descricao = ?, preco = ?, qtdEstoque = ? WHERE ID = ?";

        try {
            Connection connection = DriverManager.getConnection("jdbc:h2:~/test", "sa", "sa");

            System.out.println("success in database connection");

            PreparedStatement preparedStatement = connection.prepareStatement(SQL);

            preparedStatement.setString(1, prod.getNome());
            preparedStatement.setDouble(2, Double.parseDouble(prod.getAvaliacao()));
            preparedStatement.setString(3, prod.getDescricao());
            preparedStatement.setDouble(4, prod.getPreco());
            preparedStatement.setInt(5, prod.getQtdEstoque());
            preparedStatement.setInt(6, prod.getId());
            preparedStatement.execute();

            System.out.println("success in update profile");

        } catch (Exception e) {

            System.out.println("fail in database connection");
            System.out.println("Error: " + e.getMessage());
        }
    }

}
