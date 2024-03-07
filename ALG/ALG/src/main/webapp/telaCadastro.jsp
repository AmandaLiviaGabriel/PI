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
    <form id="signupForm" action="CreateServlet" method="post" onsubmit="return validateForm()">
        <h1>Cadastrar</h1>
        <input type="text" name="nome" placeholder="Nome">
        <br><br>
        <input type="text" name="cpf" placeholder="Cpf" oninput="formatarCpf(this)" maxlength="14">
        <br><br>
        <input type="text" name="email" placeholder="Email">
        <br><br>
        <input type="password" id="senha" name="senha" placeholder="Senha">
        <br><br>
        <input type="password" name="confirmarSenha" placeholder="Confirmar senha">
        <br><br>
        <button type="submit">Enviar</button>
    </form>
</div>

<script>

    function formatarCpf(campo) {
        let valor = campo.value.replace(/\D/g, ''); // Remove caracteres não numéricos
        if (valor.length > 3) {
            valor = valor.substring(0, 3) + '.' + valor.substring(3);
        }
        if (valor.length > 7) {
            valor = valor.substring(0, 7) + '.' + valor.substring(7);
        }
        if (valor.length > 11) {
            valor = valor.substring(0, 11) + '-' + valor.substring(11);
        }
        campo.value = valor;
    }

    function validateForm() {
        var senha = document.getElementById("senha").value;

        // Verificar se a senha tem pelo menos 8 caracteres
        if (senha.length < 8) {
            alert("A senha deve ter pelo menos 8 caracteres");
            return false;
        }

        // Verificar se a senha contém pelo menos um número
        if (!/\d/.test(senha)) {
            alert("A senha deve conter pelo menos um número");
            return false;
        }

        // Verificar se a senha contém pelo menos uma letra minúscula
        if (!/[a-z]/.test(senha)) {
            alert("A senha deve conter pelo menos uma letra minúscula");
            return false;
        }

        // Verificar se a senha contém pelo menos uma letra maiúscula
        if (!/[A-Z]/.test(senha)) {
            alert("A senha deve conter pelo menos uma letra maiúscula");
            return false;
        }

        // Verificar se a senha contém pelo menos um caractere especial
        if (!/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/.test(senha)) {
            alert("A senha deve conter pelo menos um caractere especial");
            return false;
        }

        // Se todas as condições forem atendidas, a senha é válida
        return true;
    }

</script>
</body>
</html>
