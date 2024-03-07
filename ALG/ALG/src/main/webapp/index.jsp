<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela Principal</title>
    <style>
        body{
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-image:linear-gradient(45deg,#fff,#bf9000);
        }
        div{
            background-color: rgba(0, 0, 0, 0.9);
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            padding: 80px;
            border-radius: 15px;
            color: #fff;
            outline: none;
            font-size: 15px;

        }
        input{
            padding: 15px;
            border:none;
        }
        .navigation {
            margin: 40px;
            list-style: disc;
            color: #fff;


        }
        .navigation :hover{
            color:#bf9000 ;

        }



    </style>
</head>

<body>
<div class="tela-principal">
    <h1>Principal</h1>
    <nav>
        <ul class="navigation">
            <li><a href="">Listar Produto</a></li>
            <li><a href="./telaUsuario.jsp">Listar Usuário</a></li>
            <li><a href="">Listar Pedidos</a></li>
        </ul>

        <c:if test="${not empty sessionScope.usuario}">
            <!-- Usuário logado -->
            <div class="dropdown">
                <button class="btn btn-danger dropdown-toggle" type="button" id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                    Bem-vindo, ${sessionScope.usuario.nome} <!-- Substitua 'nome' pelo atributo correto do seu objeto Usuario -->
                </button>
                <ul class="dropdown-menu" aria-labelledby="userDropdown">
                    <li><a class="dropdown-item" href="ADM.jsp">Perfil</a></li>
                    <li><a class="dropdown-item" href="/logout">Logout</a></li>
                    <!-- Adicione mais opções se necessário (por exemplo, para usuários administradores) -->
                </ul>
            </div>
        </c:if>
        <c:if test="${empty sessionScope.usuario}">
            <!-- Usuário não logado -->
            <a class="btn btn-danger" href="login.jsp">Login</a>
        </c:if>


    </nav>


</body>
</html>