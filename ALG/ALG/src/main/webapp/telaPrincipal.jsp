<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela Principal</title>
    <style>
        body{
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            background-color: #fff;
        }
        div{
            background-color: #7b8a74;
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
        .navigation {
            margin: 40px;
            list-style: disc;
            color: #fff;


        }
        .navigation :hover{
            color:#fff;

        }



    </style>
</head>

<body>
<div class="tela-principal">
    <h1>Principal</h1>
    <nav>
        <ul class="navigation">
            <li><a href="./lista-produto">Listar Produto</a></li>
            <li><a href="./lista-usuario">Listar Usuário</a></li>
            <li><a href="">Listar Pedidos</a></li>
        </ul>

    </nav>
</div>
</body>
</html>