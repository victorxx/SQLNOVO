<?php
$conexao=@new mysqli("localhost", "root", "1234", "novo");

if($conexao->connect_error)
    {
        die('erro ao conectar');
    }
?>
