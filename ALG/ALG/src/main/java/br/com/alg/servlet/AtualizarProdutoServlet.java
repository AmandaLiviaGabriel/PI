package br.com.alg.servlet;

import dao.ProdutoDao;
import model.Produto;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Integer.parseInt;

@WebServlet("/AtualizarProduto")
public class AtualizarProdutoServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String id = request.getParameter("id");
        String nome = request.getParameter("nome");
        double avaliacao = Double.parseDouble(request.getParameter("avaliacao"));
        String descricao = request.getParameter("descricao");
        String preco = request.getParameter("preco");
        int qtdEstoque = parseInt(request.getParameter("qtdEstoque"));


        ProdutoDao produtoDAO = new ProdutoDao();
        Produto prod = new Produto(nome, avaliacao, descricao, preco, qtdEstoque);
        prod.setNome(nome);
        prod.setAvaliacao(avaliacao);
        prod.setDescricao(descricao);
        prod.setPreco(Double.parseDouble(preco));
        prod.setQtdEstoque(qtdEstoque);
        produtoDAO.updateProduct(prod);



        // Redirecionar de volta para a lista de usuários após a atualização
        response.sendRedirect("/lista-produto");
    }

}
