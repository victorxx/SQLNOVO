create table if not exists alunos(
id int auto_increment primary key,
nome varchar(100),
nota decimal(5,2)
);
select * from alunos;
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <style>
        button{
            color:white;
            font-size: 33px;
            border-radius: 12px;
            background-color: red;
            width:330px;
            height: 120px;
        }
        input{
            box-shadow: 10px 10px orange;
            border-radius: 12px;
            font-size: 33px;
            width:100%;
            height: 33px;
        }
        body{
            background-color: black;
            height: 100vh;
            justify-content: center;
            align-items: center;
            display: flex;
        }
        form{
            color:white;
            text-align:center;
            background-color: darkblue;
            width:100%;
            height: 550px;
        }
    </style>
</head>
<body>

<form method="post" id="form">
    Nome:
    <input type="text" name="nome" id="nome" required>

    <input type="hidden" id="confirmado" name="confirmado">

    Nota:
    <input type="number" name="nota" id="nota" required>

    <button type="button" onclick="enviar()">GRAVAR</button>
</form>

<script>
function enviar(){
    let verificar = confirm('Você quer enviar mesmo?');

    if(verificar){
        document.getElementById('confirmado').value = 'sim';
        document.getElementById('form').submit();
    }
}
</script>

<?php

$pdo = new PDO("mysql:host=localhost;dbname=novo;charset=utf8", "root", "12345");
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if($_SERVER["REQUEST_METHOD"] === 'POST' && isset($_POST['confirmado'])){

    $nome = $_POST['nome'];
    $nota = $_POST['nota'];

    $sql = "INSERT INTO alunos (nome, nota) VALUES (?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$nome, $nota]);

    echo "<script>alert('Aluno inserido com sucesso');</script>";
}
?>

</body>
</html>
