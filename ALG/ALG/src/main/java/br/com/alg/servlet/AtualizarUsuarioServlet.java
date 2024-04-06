package br.com.alg.servlet;

import dao.UsuarioDao;
import model.Usuario;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/AtualizarUser")
public class  AtualizarUsuarioServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Obter parâmetros do formulário
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String status = request.getParameter("status");
        String cpf = request.getParameter("cpf");
        String cargo = request.getParameter("cargo");
        String senha = request.getParameter("senha");



        UsuarioDao usuariodao = new UsuarioDao();
        Usuario user = new Usuario(id, nome, email,cpf,senha, status,null);

        usuariodao.updateProfile(user);


        // Redirecionar de volta para a lista de usuários após a atualização
        response.sendRedirect("lista-usuario");
    }

}
