package br.com.alg.servlet;


import dao.ProdutoDao;
import model.Produto;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/produto")
@MultipartConfig
public class ProdutoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        double avaliacao = Double.parseDouble(request.getParameter("avaliacao"));
        String descricao = request.getParameter("descricao");
        double preco = Double.parseDouble(request.getParameter("preco"));
        int qtdEstoque = Integer.parseInt(request.getParameter("qtdEstoque"));
        String status = "Ativo";

        Produto product = new Produto( id, nome, avaliacao, descricao, preco, qtdEstoque);
        product.setId(product.getId());
        product.setNome(nome);
        product.setAvaliacao(avaliacao);
        product.setDescricao(descricao);
        product.setPreco(preco);
        product.setQtdEstoque(qtdEstoque);
        product.setStatus(status);

        // Salvar no banco de dados
        ProdutoDao.addProduct(product);

        response.sendRedirect("/lista-produto");
    }

    private List<String> uploadImages(HttpServletRequest request, List<Part> parts) throws IOException, ServletException {
        List<String> imagens = new ArrayList<>();
        String uploadDir = "E:\\ALG\\ALG\\img";


        for (Part part : parts) {
            String fileName = getFileName(part);
            if (fileName != null && !fileName.isEmpty()) {
                // Salvando a imagem no diretório
                String filePath = uploadDir + File.separator + fileName;
                try {
                    part.write(filePath);
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
                imagens.add(filePath);
            }
        }
        return imagens;
    }

    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
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