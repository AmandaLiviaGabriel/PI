<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produtos</title>
    <style>
        h1{
            font-family: Arial, Helvetica, sans-serif;
            text-align: center;
            margin-bottom: -80px;
        }

        body{
            font-family: Arial, Helvetica, sans-serif;
            background-image: linear-gradient(90deg, #fff, #bf9000);;
        }

        .table-container {
            text-align: center;
            color: #dbd5d5;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            margin-top: -400px;
        }

        table {
            border: 1px solid #000;
            border-collapse: collapse;
            width: 80%;
            background-color: #202020;
        }

        th, td {
            padding: 8px;
            border: 1px solid #000;
        }

        .titulo{
            margin-bottom: 100px;
        }

        .filter-input {
            text-align: center;
            margin-bottom: 50px; /* Adicionei um espaçamento inferior para separar da tabela */
        }

    </style>
</head>
<body>
<div class="titulo">
    <h1>Lista de Produtos</h1>
</div>

<div class="filter-input">
    <input type="text" id="searchInput" onkeyup="filterTable()" placeholder="Pesquisar por nome">
</div>

<div class="table-container">
    <table border="1" id="userTable">
        <tr>
            <th>Código</th>
            <th>Nome</th>
            <th>Quantidade</th>
            <th>Preço</th>
            <th>Descrição</th>
            <th>Avaliação</th>
            <th onclick="window.location.href= 'alterarProduto.jsp'">Editar</th>
            <th>Alterar Status</th>
            <td><button onclick="window.location.href = 'telaCadProduto.jsp'">+</button></td>
        </tr>


        <c:forEach var="prod" items="${prods}">
            <tr>
                <td>${prod.id}</td>
                <td>${prod.nome}</td>
                <td>${prod.qtdEstoque}</td>
                <td>R$ ${prod.preco}</td>
                <td>${prod.descricao}</td> <!-- Adicionada a descrição do produto -->
                <td>${prod.avaliacao}</td> <!-- Adicionada a avaliação do produto -->
                <td><button onclick="abrirNovaJanela('${prod.id}', '${prod.nome}', '${prod.avaliacao}', '${prod.descricao}', '${prod.preco}', '${prod.qtdEstoque}')">Editar</button></td>
                <td>
                    <form action="AtualizarStatusPServlet" method="post">
                        <input type="hidden" name="id" value="${prod.id}">
                        <input type="hidden" name="status" value="${prod.status}">
                        <button type="submit">Ativar/Inativar</button>
                    </form>
                </td>
            </tr>
        </c:forEach>

    </table>
</div>

<script>
    function filterTable() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("userTable");

        if (table) {
            tr = table.getElementsByTagName("tr");

            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[1]; // Index 1 corresponds to the "Nome" column
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }
    }

    function abrirNovaJanela(id, nome, avaliacao, descricao, preco, qtdEstoque, status, imagemPrincipal) {
        var url = "alterarProduto.jsp?id=" + encodeURIComponent(id) +
            "&nome=" + encodeURIComponent(nome) +
            "&avaliacao=" + encodeURIComponent(avaliacao) +
            "&descricao=" + encodeURIComponent(descricao) +
            "&preco=" + encodeURIComponent(preco)+
            "&qtdEstoque=" + encodeURIComponent(qtdEstoque) +
            "&status=" + encodeURIComponent(status) +
            "&imagemPrincipal=" + encodeURIComponent(imagemPrincipal);

        window.open(url, "_blank");
    }
</script>

</body>
</html>
