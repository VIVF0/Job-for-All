<?php

$login = $_POST['login'];
$senha = MD5($_POST['senha']);
$nome = $_POST['nome'];
$sexo = $_POST['sexo'];
$connect = mysqli_connect('localhost', 'root', '', 'job_for_all');
//$db = mysqli_select_db('job_for_all');
$query_select = "SELECT * FROM conta WHERE usuario = '".$login."'";
$select = mysqli_query($connect,$query_select);
$array = mysqli_fetch_array($select);
$logarray = $array['usuario'];

  if($login == "" || $login == null){
    echo"<script language='javascript' type='text/javascript'>
    alert('O campo login deve ser preenchido');window.location.href='
    cadastro.html';</script>";

    }else{
      if($logarray == $login){

        echo"<script language='javascript' type='text/javascript'>
        alert('Esse login já existe');window.location.href='
        ../../HTML/formulario de cadastro.html';</script>";
        die();

      }else{
        $query = "INSERT INTO conta (usuario,senha,sexo,nome) VALUES ('$login','$senha','$sexo','$nome')";
        $insert = mysqli_query($connect,$query);

        if($insert){
          echo"<script language='javascript' type='text/javascript'>
          alert('Usuário cadastrado com sucesso!');window.location.</script>";
          header("Location: ../../HTML/formulario de login.html");
        }else{
          echo"<script language='javascript' type='text/javascript'>
          alert('Não foi possível cadastrar esse usuário');window.location
          .href='../../HTML/formulario de cadastro.html'</script>";
        }
      }
    }
?>