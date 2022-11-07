<?php
require 'config.php';
require 'exibir_aula.php';
$obj_aula = new Aulas($mysql);
$aulas = $obj_aula->encontrarPorId($_GET['id_aula']);
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title><?php echo $aulas['titulo_aula'];?></title>
        <meta charset="UTF-8">
        <link rel="stylesheet" type="text/css" href="../CSS/pag_padrao.css">
        <link rel="stylesheet" type="text/css" href="../CSS/aula.css">
    </head>
    <body>
        <nav>
            <!--Menu-->
            <object width="100%" height="100px" data="../HTML/menu.html"></object>
            <!--Carrosel-->
       </nav>
        <center><div class="container">
            <div class="aulas">
                <h2>   
                    <?php echo $aulas['titulo_aula']; ?>
                </h2>
                <br>
                <p><?php echo nl2br($aulas['descricao_aula']);?></p>
            </div>
            <br><br>
            <iframe class="video" id="video" src="<?php echo $aulas['link_video']; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div></center>
    </body>
</html>