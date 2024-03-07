package br.com.alg.servlet;

import dao.UsuarioDao;
import model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
    protected void doPost( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        UsuarioDao usuarioDao = new UsuarioDao();
        Usuario usuario = usuarioDao.obterUsuarioPorCredenciais(email, senha);

        if (usuario != null) {
            // Credenciais válidas, armazena o usuário na sessão
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);

            // Redireciona para a página principal
            response.sendRedirect("index.jsp");
        } else {
            // Credenciais inválidas, redireciona para a página de login com mensagem de erro
            response.sendRedirect("Login.jsp?erro=1");
        }
    }
}
