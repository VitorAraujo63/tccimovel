<?php

use Illuminate\Support\Facades\Session;

$logado = Session::get("info_usuario");
?>
<title>Venda - MBR Imoveis</title>
<x-layout>

    <link rel="stylesheet" href="/css/venda.css">

<h1>Registre seu Imovel</h1>

    <div class='venda'>
        <h4>Coloque as Informações sobre o imovel</h4>
        <form action="fazer-imovel" method="post" class='form-venda'>
            <input type="number" name="quarto" placeholder="Quarto" value="{{ $logado->quarto }}" step="1">
            <input type="number" name="banheiro" placeholder="Banheiro" value="{{ $logado->banheiro }}" step="1">
            <input type="number" name="preco" placeholder="Preço" value="{{ $logado->preco }}" step="0.01">
            <input type="text" name="estado" placeholder="Estado" value="{{ $logado->estado }}">
            <input type="text" name="cidade" placeholder="Cidade" value="{{ $logado->cidade }}">
            <input type="text" name="rua" placeholder="Rua" value="{{ $logado->rua }}">
            <input type="text" name="bairro" placeholder="Bairro" value="{{ $logado->bairro }}">
            <input type="text" name="numero" placeholder="Numero" value="{{ $logado->numero }}">
            <input type="text" name="cep" placeholder="Cep" value="{{ $logado->cep }}">
            <input type="text" name="descricao" placeholder="Descrição" value="{{ $logado->descrição }}"><br>
            <input type="submit" value="Registrar" id="reg">
            @csrf
        </form>
    </div>
</x-layout>