<!DOCTYPE html>
<head lang="pt-br">
    <head>
        <title>Contato</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/contato.css">
    </head>
    <body>
      <nav>
        <object width="100%" height="100px" data="menu.html"></object>
      </nav>  
       <center><div class="fundo"><div class="contato">
       <form action="enviar.php" method="post" name="form" id="formulario">
          <br><h2>Formulario de Contato!</h2><br>
          <div>
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome">
          </div><br>
          <div>
            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email">
          </div><br>
          <div>
            <label for="assunto">Assunto:</label>
            <input type="text" id="assunto" name="assunto">
          </div><br>
          <div>
            <label for="mensagem">Mensagem:</label>
            <br>
            <br><textarea id="mensagem" name="mensagem"></textarea>
          </div><br>
          <div>
            <button type="submit">Enviar</button>
          </div>
        </form>
        <script>
          formulario.reset();
        </script>
      </div></div></center>
    </body>
</head>