<title>Cadastro - MBR Imoveis</title>
<x-layout>
    
    <link rel="stylesheet" href="/css/login.css">
    <section class="area-login">
        <div class="login">
            <div>
                <img src="/img/Logo_White.png">
            </div>

            <form action="fazer-cadastro" method="post">
                <input type="text" name="nome" placeholder="Nome" required><br>
                <input type="tel" name="tele" placeholder="Telefone" required><br>
                <input type="email" name="email" placeholder="Email" required><br>
                <input type="email" name="confirmemail" placeholder="Confirmar Email" required><br>
                <input type="password" name="senha" placeholder="Senha" required><br>
                <input type="submit" value="Cadastrar">
                @csrf
            </form>
            <p>Já tem conta?<a href="login">Fazer Login</a></p>
        </div>
    </section>
</x-layout>