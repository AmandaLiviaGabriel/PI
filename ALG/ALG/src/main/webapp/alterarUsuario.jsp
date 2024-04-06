<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alterar</title>
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
<div class="atl-usuario">
    <form id="signupForm" action="AtualizarUser" method="post" onsubmit="return validateForm()">
        <h1>Alterar</h1>
        <input type="hidden" name="id" value="${param.id}">
        <input type="text" name="nome" placeholder="Nome" value="${param.nome}">
        <br><br>
        <input type="text" name="cpf" id="cpf" placeholder="CPF" oninput="formatarCpf(this); validarCPF(this.value);" value="${param.cpf}">
        <span id="cpfValidationMessage" style="color: red;"></span>
        <br><br>
        <input type="text" name="email" id="email" placeholder="Email" value="${param.email}">
        <br><br>
        <input type="password" id="senha" name="senha" placeholder="Senha" value="${param.senha}">
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

    function validarCPF(cpf) {
        cpf = cpf.replace(/[^\d]+/g, ''); // Remove caracteres não numéricos

        if (cpf === '' || cpf.length !== 11 || /^(\d)\1{10}$/.test(cpf)) {
            document.getElementById("cpfValidationMessage").innerText = "CPF inválido";
            return false; // CPF inválido se estiver vazio, não tiver 11 dígitos ou for uma sequência de números repetidos
        }

        // Validação do primeiro dígito verificador
        let add = 0;
        for (let i = 0; i < 9; i++) {
            add += parseInt(cpf.charAt(i)) * (10 - i);
        }
        let rev = 11 - (add % 11);
        if (rev === 10 || rev === 11) {
            rev = 0;
        }
        if (rev !== parseInt(cpf.charAt(9))) {
            document.getElementById("cpfValidationMessage").innerText = "CPF inválido";
            return false;
        }

        // Validação do segundo dígito verificador
        add = 0;
        for (let i = 0; i < 10; i++) {
            add += parseInt(cpf.charAt(i)) * (11 - i);
        }
        rev = 11 - (add % 11);
        if (rev === 10 || rev === 11) {
            rev = 0;
        }
        if (rev !== parseInt(cpf.charAt(10))) {
            document.getElementById("cpfValidationMessage").innerText = "CPF inválido";
            return false;
        }

        document.getElementById("cpfValidationMessage").innerText = ""; // Limpa a mensagem de validação se o CPF for válido
        return true; // CPF válido
    }

    function validateForm() {
        // Aqui você pode adicionar validações adicionais, se necessário
        return true; // Retorna true para permitir o envio do formulário se todas as validações passarem
    }
</script>


</body>
</html>
