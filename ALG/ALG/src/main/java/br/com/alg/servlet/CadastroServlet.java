package br.com.alg.servlet;

import dao.UsuarioDao;
import model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/CreateServlet")
public class CadastroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Obtenha os parâmetros do formulário
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String senha = request.getParameter("senha");

        Usuario usuario = new Usuario(nome, email, cpf, senha);

        UsuarioDao usuarioDao = new UsuarioDao(); // Certifique-se de ter a lógica para obter a conexão
        boolean sucesso;
        if (usuarioDao.inserirUsuario(usuario)) sucesso = true;
        else sucesso = false;

        // Redirecione para uma página de success ou erro com base no resultado da inserção
        if (sucesso) {
            response.sendRedirect("login.jsp"); // Página de sucesso
        } else {
            response.sendRedirect("cadastroErro.jsp"); // Página de erro
        }
    }

}

