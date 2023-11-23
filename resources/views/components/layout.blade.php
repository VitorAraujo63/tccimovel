<?php

use Illuminate\Support\Facades\Session;

$logado = Session::get("info_usuario");
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MBR Imoveis</title>
    <link rel="shortcut icon" href="/img/logo.ico" type="image/x-icon">
    <link rel="stylesheet" href="/css/layout.css">
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
    <header>
        <div class="navbar">
            <ul>
                <li><a href="/"><img src="/img/home.svg"></a></li>

                @if ($logado)
                <li><a href="/venda"><img src="/img/dollar_sign.svg" alt=""></a></li>
                @endif

                @if ($logado)
                <li style="float:right" id="log"><a href="/conta"><img src="/img/account.svg"></a></li>
                @endif

                @if (!$logado)
                <li style="float:right" id="log"><a class="active" href="/login">Login</a></li>
                @endif
                
            </ul>
        </div>
    </header>

    @if (session('mensagem_erro'))
    <div class="">
        {{ session('mensagem_erro') }}
    </div>
    @endif

    <div class="conteudo-dinamico">
        {{ $slot }}
    </div>

    
    <footer>
        Copyright 2023 © - MBR IMOVEIS
    </footer>

    
</body>

</html>