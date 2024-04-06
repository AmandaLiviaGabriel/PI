<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalhes</title>
    <!-- Adicionando Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #7b8a74; /* Ajuste a cor conforme necessário */
        }
        nav {
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-left: 20px;
            margin-right: 20px;
        }
        li {
            display: inline;
        }
        a {
            display: inline-block;
            padding: 25px;
            color: rgb(0, 0, 0);
            text-decoration: none;
            font-weight: bold;
            margin-bottom: 5px;
            margin-top: 5px;
        }
        a:hover {
            background-color: #555;
        }
        .logo img {
            max-height: 80px;
            border-radius: 50%; /* Torna a imagem redonda */
            overflow: hidden; /* Para garantir que a imagem não ultrapasse os limites */ /* Ajuste conforme necessário */
        }
        a img{
            height: 32px;
            margin-top: 5px;
        }
        .product-details {
            padding: 20px;
        }
        .product-name {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            margin-top: 20px;
        }
        .product-price {
            font-size: 18px;
            margin-bottom: 10px;
        }
        .product-rating {
            font-size: 16px;
            margin-bottom: 20px;
        }
        .buy-button {
            padding: 10px 20px;
            font-size: 18px;
            background-color: #7b8a74;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .description {
            margin-top: 40px;
        }
        .carousel-item img {
            max-width: 90%;
            height: auto;
            margin-top: 40px;
        }
    </style>
</head>
<body>

<header>
    <nav>
        <div class="logo">
            <img src="imgteste/logo.jpeg" alt="Logotipo">
        </div>
        <ul>
            <li><a href="#">Login | Cadastro</a></li>
            <li><a href="#"><img src="imgteste/icon_carrinho.png" alt="Carrinho de Compras"></a></li>
        </ul>
    </nav>
</header>

<div class="container">
    <div class="row">
        <div class="col-md-6">
            <!-- Carrossel de Imagens -->
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="imgteste/aminoacidos.png" class="d-block w-100" alt="Imagem 1">
                    </div>
                    <div class="carousel-item">
                        <img src="imgteste/carbo.png" class="d-block w-100" alt="Imagem 2">
                    </div>
                    <div class="carousel-item">
                        <img src="imgteste/vitamina.png" class="d-block w-100" alt="Imagem 3">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-md-6 product-details">
            <div class="product-name">Nome do Produto</div>
            <div class="product-price">R$ 99,99</div>
            <div class="product-rating">Avaliação: 4.5/5</div>
            <button class="buy-button">COMPRAR</button>
            <div class="description">
                <!-- Descrição do Produto -->
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet odio sed nisl euismod facilisis.</p>
                <p>Integer non est at quam tristique dapibus id in lectus. Phasellus ut nisl vel enim dictum rhoncus.</p>
                <p>Donec vel placerat quam. Pellentesque ultrices sem sit amet eros interdum, vel consequat justo ullamcorper.</p>
            </div>
        </div>
    </div>
</div>

<!-- Adicionando Bootstrap JS (opcional, se você quiser usar os controles do carrossel) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

</body>
</html>
