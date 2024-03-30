<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@declare id="descricao"--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Alterar Produtos</title>
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: #fff;
    }
    .box {
      width: 100%;
      color: white;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: #7b8a74;
      padding: 15px;
      border-radius: 15px;
      width: 25%;
    }
    legend {
      padding: 10px;
      text-align: center;
      background-color: #7b8a74;
      border-radius: 5px;
    }
    .inputBox {
      position: relative;
      width: 100%;
    }
    .inputUser {
      width: 100%;
    }

    .Avaliação input[type="radio"] {
      margin-right: -2px;
      margin-bottom: -6px;
    }
    .botao-conteiner {
      display: flex;
      justify-content: center;
    }
    #submit, #cancelar {
      margin-right: 10px;
    }
    fieldset {
      border: none;
    }
  </style>
</head>
<body>
<div class="box">
  <fieldset>
    <legend><b>Alterar Produtos</b></legend>
    <br>

    <div class="inputBox">
      <label for="nome">Nome do Produto</label>
      <input type="text" name="nome" id="nome" class="inputUser" required maxlength="150">
    </div>
    <br>
    <div class="inputBox">
      <label for="quantidade">Quantidade do Produto</label>
      <input type="number" id="quantidade" name="quantidade" class="inputUser" min="1" max="1000">
    </div>
    <br>
    <div class="inputBox">
      <label for="preco">Preço do Produto</label>
      <input type="number" id="preco" name="preco" class="inputUser" min="0,00">
    </div>
    <br>
    <div class="inputBox">
      <label for="descricao">Descrição Detalhada do Produto</label>
      <textarea rows="5" cols="20" maxlength="50" class="inputUser"></textarea>
    </div>
    <br>
    <div class="Avaliação">
      <p>Avaliação</p>
      <input type="radio" id="1" name="Avaliação" value="1,0" required>
      <label for="1">1,0</label>
      <input type="radio" id="1,5" name="Avaliação" value="1,5" required>
      <label for="1,5">1,5</label>
      <input type="radio" id="2,0" name="Avaliação" value="2,0" required>
      <label for="2,0">2,0</label>
      <input type="radio" id="2,5" name="Avaliação" value="2,5" required>
      <label for="2,5">2,5</label>
      <input type="radio" id="3,0" name="Avaliação" value="3,0" required>
      <label for="3,0">3,0</label>
      <input type="radio" id="3,5" name="Avaliação" value="3,5" required>
      <label for="3,5">3,5</label>
      <input type="radio" id="4,0" name="Avaliação" value="4,0" required>
      <label for="4,0">4,0</label>
      <input type="radio" id="4,5" name="Avaliação" value="4,5" required>
      <label for="4,5">4,5</label>
      <input type="radio" id="5,0" name="Avaliação" value="5,0" required>
      <label for="5,0">5,0</label>
    </div>
    <br><br>
    <div class="botao-conteiner">
      <input type="submit" id="submit" name="submit" value="Salvar">
      <input type="submit" id="cancelar" name="cancelar" value="Cancelar" formnovalidate>
    </div>
  </fieldset>
</div>
</body>
</html>

