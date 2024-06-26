package br.com.alg.servlet;


import dao.ProdutoDao;
import model.Produto;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

@WebServlet("/lista-produto")
public class ListaProdutoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Produto> prods = new ProdutoDao().showProduto();

        Collections.sort(prods,(p1, p2) -> p2.getId() - p1.getId());

        request.setAttribute("prods", prods);

        request.getRequestDispatcher("telaProduto.jsp").forward(request,response);
    }
}
