<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--@declare id="descricao"--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Alterar Produtos</title>
  <style>
    body{
      font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    }

    .form-wrapper {
      width: 20%; /* Largura desejada para a caixa */
      margin: 0 auto; /* Centraliza horizontalmente */
      padding: 20px;
      border: 1px solid #ccc; /* Adiciona uma borda */
      border-radius: 8px; /* Arredonda as bordas */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Adiciona sombra */
      position: absolute; /* Posicionamento absoluto */
      top: 50%; /* Metade da altura da tela */
      left: 50%; /* Metade da largura da tela */
      transform: translate(-50%, -50%); /* Move a caixa para o centro */
      background-color: #7b8a74;
    }

    .form-wrapper h1 {
      text-align: center; /* Centraliza o título */
    }

    /* Restante do CSS para o formulário */
    form {
      width: 100%;
    }

    label {
      display: block;
      margin-bottom: 5px;
    }

    input[type="text"],
    select,
    textarea {
      width: 100%;
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    textarea {
      height: 100px;
      resize: vertical;
    }

    button {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 10px;
    }

    button[type="button"] {
      background-color: #f44336;
    }

    button:hover {
      background-color: #45a049;
    }

    button[type="button"]:hover {
      background-color: #db4437;
    }


  </style>
</head>
<body>
<div class="form-wrapper">
  <h1>Editar Produto</h1>
    <form action="/AtualizarProduto" method="post">
      <input type="hidden" name="id" value="${param.id}">
      <label for="productName">Nome do Produto:</label>
      <input type="text" id="productName" name="nome" maxlength="200" value="${param.nome}" required>

      <label for="productRating">Avaliação:</label>
      <select id="productRating" name="avaliacao" required>
        <option value="0.5" ${param.avaliacao == '0.5' ? 'selected' : ''}>0.5</option>
        <option value="1" ${param.avaliacao == '1' ? 'selected' : ''}>1</option>
        <option value="1.5" ${param.avaliacao == '1.5' ? 'selected' : ''}>1.5</option>
        <option value="2" ${param.avaliacao == '2' ? 'selected' : ''}>2</option>
        <option value="2.5" ${param.avaliacao == '2.5' ? 'selected' : ''}>2.5</option>
        <option value="3" ${param.avaliacao == '3' ? 'selected' : ''}>3</option>
        <option value="3.5" ${param.avaliacao == '3.5' ? 'selected' : ''}>3.5</option>
        <option value="4" ${param.avaliacao == '4' ? 'selected' : ''}>4</option>
        <option value="4.5" ${param.avaliacao == '4.5' ? 'selected' : ''}>4.5</option>
        <option value="5" ${param.avaliacao == '5' ? 'selected' : ''}>5</option>
      </select>

      <label for="productDescription">Descrição Detalhada:</label>
      <textarea id="productDescription" name="descricao" maxlength="2000" required>${param.descricao}</textarea>

      <label for="productPrice">Preço do Produto:</label>
      <input type="text" id="productPrice" name="preco" placeholder="0.00" value="${param.preco}" required>

      <label for="productStock">Quantidade em Estoque:</label>
      <input type="number" id="productStock" name="qtdEstoque" min="0" value="${param.qtdEstoque}" required>

      <button type="submit">Salvar</button>
      <button type="button" onclick="cancel()">Cancelar</button>
  </form>

</div>
</body>
</html>

