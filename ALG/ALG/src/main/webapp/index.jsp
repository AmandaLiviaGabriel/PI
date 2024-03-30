<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela de Login</title>
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
        button{
            background-color:#7b8a74;
            border: none;
            padding: 15px;
            width: 100%;
            border-radius: 10px;
            color: #fff;
            font-size: 15px;

        }
        button:hover{
            background-color: #7d9581;
            cursor:pointer;
        }

        p a{
            display: flex;
            align-items: center;
            justify-content: center;
            color: #7d9581;
        }

    </style>
</head>
    <body>
    <div class="tela-login">
        <form action="LoginServlet" method="post">
            <h1>Login</h1>
            <input type="text" placeholder="email" name="email">
            <br><br>
            <input type="password" placeholder="senha" name="senha">
            <br><br>
            <button>Enviar</button>
        </form>
    </div>
    </body>
</html>
