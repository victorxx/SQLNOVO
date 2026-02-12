create table if not exists alunos(
id int auto_increment primary key,
nome varchar(300)not null,
nota int not null
);
insert into alunos(nome,nota)
values('victor',5.5);
select * from alunos;
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="utf-8">
    <style>
        body{
            align-items: center;
            justify-content: center;
            display: flex;
            height: 100vh;
            background-color: black;
        }
        form{
            background-color: red;
            color:white;
            text-align: center;
            padding:20px;
            border-radius: 12px;
            width:350px;
        }
        input,button{
            font-size: 33px;
            padding:20px;
            margin:10px 0;
            border-radius: 12px;
        }
        input{
            width:90%;
        }
        button{
            width:95%;
            background-color: yellow;
            color:white;
            border:none;
            cursor:pointer;
        }
    </style>
</head>
<body>
    <form method="post" id="form">
        ID DO ALUNO:<br>
        <input type="number" name="id" id="numero"><br>
        NOVO NOME:<br>
        <input type="text" name="nome" id="nome"><br>
        NOVA NOTA:<br>
        <input type="number" name="nota" id="nota"><br>
        <input type="hidden" name="confirmado" id="confirmado">
        <button type="button" onclick="enviar()">Confirmado</button>
    </form>

    <script>
        function enviar() {
            let verificar = confirm('Você quer realmente enviar?');
            if(verificar) {
                document.getElementById('confirmado').value = 'foi';
                document.getElementById('form').submit();
            } else {
                window.location.href='http://localhost/teste/index.php';
            }
        }
    </script>

<?php
if($_SERVER["REQUEST_METHOD"]==='POST')
{
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=novo;charset=utf8", "root", "12345");
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $id = $_POST['id'];
        $nome = $_POST['nome'];
        $nota = $_POST['nota'];

        $sql = "UPDATE alunos SET nome = ?, nota = ? WHERE id = ?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$nome, $nota, $id]);

        echo "<script>alert('Aluno atualizado com sucesso');</script>";
    } catch(PDOException $e) {
        echo "<script>alert('Erro: ".$e->getMessage()."');</script>";
    }
}
?>
</body>
</html>
