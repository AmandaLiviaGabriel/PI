<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Produtos</title>
</head>
<style>
    body{
        font-family: Arial, Helvetica, sans-serif;
        background-image:linear-gradient(45deg,#fff,#bf9000);
    }
    .box{
        width: 100%;
        color: white;
        position: absolute;
        top:50%;
        left: 50%;
        transform: translate(-50%,-50%);
        background-color: rgba(0, 0, 0, 0.9);
        padding: 15px;
        border-radius:15px;
        width: 25%;
    }
    fieldset{
        border:3px solid #bf9000;
    }
    legend{
        border: 1px solid  #bf9000;
        padding: 10px;
        text-align: center;
        background-color: #bf9000;
        border-radius: 5px;

    }
    .inputBox{
        position: relative;
        width: 100%;
    }
    .inputUser{
        width: 100%;
    }
</style>
<body>

<div class="box">
    <form id="signupForm" action="/produto" method="post" onsubmit="return validateForm()">
    <fieldset>
        <legend><b>Cadastro de Produtos</b></legend>
        <br>

        <div class="inputbox">
            <input type="text"name="nome" id="nome" class="inputUser"required maxlength="200">
            <label for="nome">Nome do Produto</label>
        </div>
        <br>
        <div class="inputbox">
            <input type="number"id="quantidade" name="qtdEstoque" class="inputUser" min="1" max="1000">
            <label for="nome">Quantidade do Produto</label>
        </div>
        <br>
        <div class="inputbox">
            <input type="number"id="preco" name="preco"class="inputUser" min="1" max="1000">
            <label for="nome">Preço do Produto</label>
        </div>
        <br>
        <div class="inputbox">
            <input type="textarea" name="descricao" rows="10" cols="40" maxlength="2000" class="inputUser">
            <label for="nome">Descrição Detalhada do Produto</label>
        </div>
        <br>
        <div>
            <p>Avaliação</p>
            <input type="radio" id="1"name="avaliacao" value="1.0" required>
            <label>1,0</label>
            <input type="radio" id="1,5"name="avaliacao" value="1.5" required>
            <label>1,5</label>
            <input type="radio" id="2,0"name="avaliacao" value="2.0" required>
            <label>2,0</label>
            <input type="radio" id="2,5"name="avaliacao" value="2.5" required>
            <label>2,5</label>
            <input type="radio" id="3,0"name="avaliacao" value="3.0" required>
            <label>3,0</label>
            <input type="radio" id="3,5"name="avaliacao" value="3.5" required>
            <label>3,5</label>
            <input type="radio" id="4,0"name="avaliacao" value="4.0" required>
            <label>4,0</label>
            <input type="radio" id="4,5"name="avaliacao" value="4.5" required>
            <label>4,5</label>
            <input type="radio" id="5,0"name="avaliacao" value="5.0" required>
            <label>5,0</label>
        </div>
    </form>
        <br><br>

        <input type="submit" id="salvar" name="submit" value=" Salvar ">
        <input type="submit" id="cancelar" name="submit" value="Cancelar" formnovalidate>

    </div>
</fieldset>

</body>
</html>