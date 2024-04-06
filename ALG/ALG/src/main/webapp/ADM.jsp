<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="styleADM.css">
    <title>Title</title>
</head>
<body>
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
    <a class="btn btn-danger" href="index.jsp">Login</a>
</c:if>

</div>
</div>
</nav>
</header>
<main class="container mt-4">
    <div class="row">
        <c:if test="${not empty sessionScope.usuario}">
            <c:choose>
                <c:when test="${sessionScope.usuario.cargo != 'Estoquista'}">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="image/sacola.png" class="card-img-top" alt="Imagem Inserir">
                            <div class="card-body">
                                <h5 class="card-title">Listar Produto</h5>
                                <p class="card-text">Clique aqui para exibir os produtos listados.</p>
                                <a href="lista-produto" class="btn btn-primary">Exibir</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="image/usuario.png" class="card-img-top" alt="Imagem Usuario">

                            <div class="card-body">
                                <h5 class="card-title">Listar Usuario</h5>
                                <p class="card-text">Clique aqui para exibir os usuários listados.</p>
                                <a href="lista-usuario" class="btn btn-primary">Exibir</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="image/pedidos.png" class="card-img-top" alt="Imagem Excluir">
                            <div class="card-body">
                                <h5 class="card-title">Listar Pedidos</h5>
                                <p class="card-text">Clique aqui para exibir os pedidos listados.</p>
                                <a href="#" class="btn btn-danger">Exibir</a>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:when test="${sessionScope.usuario.cargo == 'Estoquista'}">
                    <div class="col-md-4">
                        <div class="card">
                            <img src="image/sacola.png" class="card-img-top" alt="Imagem Inserir">
                            <div class="card-body">
                                <h5 class="card-title">Listar Produto</h5>
                                <p class="card-text">Clique aqui para exibir os produtos listados.</p>
                                <a href="lista-produto" class="btn btn-primary">Exibir</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="image/pedidos.png" class="card-img-top" alt="Imagem Excluir">
                            <div class="card-body">
                                <h5 class="card-title">Listar Pedidos</h5>
                                <p class="card-text">Clique aqui para exibir os pedidos listados.</p>
                                <a href="#" class="btn btn-danger">Exibir</a>
                            </div>
                        </div>
                    </div>
                </c:when>
            </c:choose>
        </c:if>

        <c:if test="${empty sessionScope.usuario}">
            <p>Nenhum usuário logado.</p>
        </c:if>
    </div>
</main>
</body>
</html>
