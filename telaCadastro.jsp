<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro</title>
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

        button{
            background-color:#bf9000;
            border: none;
            padding: 15px;
            width: 100%;
            border-radius: 10px;
            color: #fff;
            font-size: 15px;

        }
        button:hover{
            background-color: #8b7225;
            cursor:pointer;
        }

    </style>
</head>
<body>
<div class="tela-login">
    <form action="CreateServlet" method="post">
        <h1>Cadastrar</h1>
        <input type="text" name="nome" placeholder="Nome">
        <br><br>
        <input type="text" name="cpf" placeholder="Cpf">
        <br><br>
        <input type="text" name="email" placeholder="Email">
        <br><br>
        <input type="password" name="senha" placeholder="Senha">
        <br><br>
        <input type="password" name="confirmarSenha" placeholder="Confirmar senha">
        <br><br>
        <button type="submit">Enviar</button>
    </form>
</div>
</body>
</html>
