<?php session_start(); ?>
<?php include("connexion_bdd.php")?>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8">
        <title>🐏Kanata🐏</title>
        <h1 class="head">🐏<u>Kanata</u>🐏</h1>

    </head>




    <body>
        <div class="container">




            <p class="genre">Pas encore membre ? <a href="inscription.php" class="bouton_Valider" style="text-decoration:none"> Inscrivez-vous </a></p></br>
            <form class="genre" action="login.php" method="post">
                Votre login : <input type="text" name="username">
                <br /><br/>
                Votre mot de passe : <input type="password" name="password"><br /><br/>
                <input type="submit" value="Connexion">




        </div>
    </body>


</html>
