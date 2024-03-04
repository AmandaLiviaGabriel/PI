
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<html>
<head>
    <title>Tela de Usuário</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            border: 2px solid blue;
            padding: 10px;
            position: relative;
        }

        input, button, select {
            height: 30px;
            font-size: 16px;
        }

        input {
            width: 80%;
            border: 1px solid blue;
            padding: 5px;
        }

        button {
            width: 10%;
            border: none;
            background-color: blue;
            color: white;
            margin: 5px 10px 5px 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid blue;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: blue;
            color: white;
        }

        td button {
            width: 80%;
            height: 80%;
        }

        .botao {
            position: absolute;
            right: 20px;
            top: 50%;
            transform: translateY(-50%);
        }
    </style>
</head>
<body>
<div class="container">
    <input type="text" name="procurar" placeholder="procurar">
    <p><a href="telaCadastro.jsp"><button>+</button></a> </p>
    <table>
        <thead>
        <tr>
            <th>Nome</th>
            <th>Email</th>
            <th>Status</th>
            <th>Alterar</th>
            <th>Hab/des</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>Leo</td>
            <td>Leo@gmail.com</td>
            <td id="status1">Ativo</td>
            <td>
                <select name="cargo">
                    <option value="estoquista">Estoquista</option>
                    <option value="administrador">Administrador</option>
                </select>
            </td>
            <td><button id="botao1" onclick="habilitar(this, 'status1')">Inabilitar</button></td>
        </tr>
        <tr>
            <td>Maria</td>
            <td>Maria@gmail.com</td>
            <td id="status2">Desativar</td>
            <td>
                <select name="cargo">
                    <option value="estoquista">Estoquista</option>
                    <option value="administrador">Administrador</option>
                </select>
            </td>
            <td><button id="botao2" onclick="habilitar(this, 'status2')">Ativar</button></td>
        </tr>
        </tbody>
    </table>
    <div class="botao">
        <button onclick="alterar(this)">Alterar</button>
    </div>
</div>
<script>
    function alterar(botao) {
        alert("Você clicou no botão " + botao.innerHTML);
    }

    function habilitar(botao, status) {
        var elemento = document.getElementById(status);
        if (botao.innerHTML == "Inabilitar") {
            botao.innerHTML = "Ativar";
            elemento.innerHTML = "Desativar";
        } else {
            botao.innerHTML = "Inabilitar";
            elemento.innerHTML = "Ativo";
        }
    }
</script>
</body>
</html>


</body>
</html>
