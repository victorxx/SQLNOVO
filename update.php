<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <style>
            body{
                align-items: center;
                justify-content: center;
                display: flex;
                background-color: black;
                height: 100vh;
            }
            form{
                background-color: red;
                color:white;
                text-align: center;
                padding:20px;
                width:350px;
                border-radius: 12px;
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
                width: 95%;
                color:white;
                border:none;
                cursor:pointer;
                background-color: yellow;
            }
        </style>
    </head>
    <body>
        <form method="post" id="form">
            ID DO ALUNO:<br>
            <input type="number" name="id" id="name">
            NOVO NOME:<br>
            <input type="text" name="nome" id="nome">
            NOTA NOTA:<br>
            <input type="number" name="nota" id="nota">
            <button type="button" onclick="verificar()">CONFIRMA</button>
        </form>
        <script>
           function verificar()
           {
             let verificar=confirm("você quer mesmo enviar?");
            if(verificar)
                {
                    document.getElementById('form').submit();
                }else{
                    window.location.href='http://localhost/teste/index.php';
                }
           }
        </script>
    </body>
    <?php
if($_SERVER["REQUEST_METHOD"] === 'POST')
{
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=novo;charset=utf8", "root", "12345");
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $id   = $_POST['id'];
        $nome = $_POST['nome'];
        $nota = $_POST['nota'];

        $sql = "UPDATE alunos SET nome = ?, nota = ? WHERE id = ?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$nome, $nota, $id]);

        echo "<script>alert('Mudou com sucesso!')</script>";
    } catch(PDOException $e) {
        echo "Erro: " . $e->getMessage();
    }
}
?>

</html>
