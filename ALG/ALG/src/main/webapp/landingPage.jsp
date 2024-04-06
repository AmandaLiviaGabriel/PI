<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <link rel="stylesheet" href="style.css">
    <title>Title</title>
</head>
<body>
<header>
    <nav>
        <div class="logo">
            <img src="img/logo.jpeg" alt="Logotipo">
        </div>
        <ul>
            <li><a href="#">Login | Cadastro</a></li>
            <li><a href="#"><img src="img/icon_carrinho.png" alt="Carrinho de Compras"></a></li>
        </ul>
    </nav>
</header>

<section class="products">

    <div class="product-category">
        <figure>
            <img src="img/carbo.jpeg" alt="Categoria 1">
            <figcaption>Carboidratos</figcaptifont-weight: bold;on>
        </figure>
        <figure>
            <img src="img/proteina.jpeg" alt="Categoria 2">
            <figcaption>Proteínas</figcaption>
        </figure>
        <figure>
            <img src="img/aminoacido.jpeg" alt="Categoria 3">
            <figcaption>Aminoacídos</figcaption>
        </figure>
        <figure>
            <img src="img/vitamina.jpeg" alt="Categoria 4">
            <figcaption>Vitaminas</figcaption>
        </figure>
    </div>

    <div class="product-items">
        <div class="card">
            <h2>Whey Protein</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 99,00</p>
            <p><button onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <!-- Repita para outros produtos -->
        <div class="card">
            <h2>Creatina Pure</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 90,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

        <div class="card">
            <h2>Nome do Produto</h2>
            <img src="caminho_da_imagem_do_produto" alt="img">
            <p class="price">R$ 0,00</p>
            <p><button  onclick="window.location.href = 'telaDetalhe.jsp'">Detalhes</button></p>
        </div>

    </div>

</section>
</body>
</html>
