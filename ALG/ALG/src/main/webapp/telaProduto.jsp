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
    <th>Imagem</th> <!-- Nova coluna para visualização de imagens -->
    <th>Editar</th>
    <th>Alterar Status<th>
    <button onclick="window.location.href = 'telaCadastro.jsp'">+</button>
</tr>

<!-- Colocar os dados dos produtos aqui -->
<!-- Substitua a estrutura  pelos dados reais do seu backend -->
    <!-- Exemplo fictício -->
    <tr>
    <td>1</td>
    <td>Produto A</td>
    <td>10</td>
    <td>R$ 50,00</td>
    <td>Descrição do Produto A</td>
    <td>4.5</td>
    <td><img src="Imagem/262d4613-8325-42b0-84d5-3632cda68bd4.tmp" alt="Imagem Produto A" width="100"></td> <!-- Exemplo de imagem -->
    <td><button onclick="abrirNovaJanela()">Editar</button></td>
    <td>
    <form action="AtualizarStatusServlet" method="post">
    <input type="hidden" name="userId" value="1">
    <button type="submit">Habilitar/Inabilitar</button>
    </form>
    </td>
    </tr>
    <!-- Fim do exemplo fictício -->

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

    function abrirNovaJanela() {
    // Lógica para abrir uma nova janela de edição
    alert("Função de edição ainda não implementada.");
    }
    </script>

    </body>
</html>