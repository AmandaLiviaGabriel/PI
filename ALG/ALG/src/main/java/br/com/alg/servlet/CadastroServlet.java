package br.com.alg.servlet;

import dao.UsuarioDao;
import model.Usuario;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/CreateServlet")
public class CadastroServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Obtenha os parâmetros do formulário
        int id= 0;
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String cargo = request.getParameter("cargo");
        String confirmarSenha = request.getParameter("confirmarSenha");
        String senha = request.getParameter("senha");
        String status = request.getParameter("status");

        Usuario Usuario = new Usuario(id, nome, email, cpf, cargo, senha, confirmarSenha, cargo);

        UsuarioDao usuarioDao = new UsuarioDao(); // Certifique-se de ter a lógica para obter a conexão
        boolean sucesso;
        if (usuarioDao.inserirUsuario(Usuario)) sucesso = true;
        else sucesso = false;

        // Redirecione para uma página de success ou erro com base no resultado da inserção
        if (sucesso) {
            response.sendRedirect("./lista-usuario"); // Página de sucesso
        } else {
            response.sendRedirect("cadastroErro.jsp"); // Página de erro
        }
    }

}

