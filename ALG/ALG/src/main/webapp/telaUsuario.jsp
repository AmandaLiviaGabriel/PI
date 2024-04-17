
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<head>
    <title>Tela de Usuário</title>
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
    <h1>Lista de Usuários</h1>
</div>

<div class="filter-input">
    <input type="text" id="searchInput" onkeyup="filterTable()" placeholder="Pesquisar por nome">
</div>

<div class="table-container">

    <table border="1" id="userTable">
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Email</th>
            <th>CPF</th>
            <th>Cargo</th>
            <th>Status</th>
            <th onclick="window.location.href= 'alterarUsuario.jsp'">Editar</th>
            <th>Alterar Status<th>
            <button onclick="window.location.href = 'telaCadastro.jsp'">+</button>
        </tr>

        <c:forEach var="users" items="${users}">
            <tr>
                <td>${users.id}</td>
                <td>${users.nome}</td>
                <td>${users.email}</td>
                <td>${users.cpf}</td>
                <td>${users.cargo}</td>
                <td><form action="AtualizarStatusServlet" method="post">
                    <input type="hidden" name="id" value="${users.id}">
                    <input type="hidden" name="status" value="${users.status}">
                    <button type="submit">Ativar/Inativar</button>
                </form>${users.status}</td>
                <td><button onclick="abrirNovaJanela('${users.id}', '${users.nome}', '${users.email}', '${users.cpf}', '${users.cargo}', '${users.senha}', '${users.confirmarSenha}')">Editar</button>
                <td>

                </td>
                </c:forEach>


            </tr>

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

    function abrirNovaJanela(id, nome, email, cpf, cargo, senha, confirmarSenha) {
        var url = "alterarUsuario.jsp?id=" + encodeURIComponent(id) +
            "&nome=" + encodeURIComponent(nome) +
            "&email=" + encodeURIComponent(email) +
            "&cpf=" + encodeURIComponent(cpf) +
            "&cargo=" + encodeURIComponent(cargo)+
            "&senha=" + encodeURIComponent(senha) +
            "&confirmarSenha=" + encodeURIComponent(confirmarSenha);

        window.open(url, "_blank");
    }
</script>

</body>
</html>