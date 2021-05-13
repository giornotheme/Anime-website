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
    <form method = "POST" action ="" name="urmail" class="form">
      <table >

      <p class="genre"> Déjà un compte ? <a href="index.php" class="bouton_Valider" style="text-decoration:none"> Connectez-vous </a><br><br><br>
      Pseudo : <input name="pseudo" id="pseudo" type="text"  onkeyup="remplir()" maxlength="100" required ><br><br>
      Password: <input name="mdp" id="mdp" type="password" onkeyup="remplir()"  maxlength="100" required><br><br>
      Repeat your password: <input name="cmdp" id="cmdp" onkeyup="remplir()" type="password"  maxlength="100" required><br><br><br>
      Statut: <input type ="radio" name="statut" value="ADMIN" id="admin"/> <label for="admin">ADMIN</label>
              <input type ="radio" name="statut" value="NORMAL" id="normal"/> <label for="normal">NORMAL</label><br><br>
      Accstatus : <input type ="radio" name="accstatus" value="NOT BAN" id="notban"/> <label for="notban">NOT BAN</label>
                  <input type ="radio" name="accstatus" value="BAN" id="ban"/> <label for="notban">BAN</label><br><br>
      <input class= "bouton_Valider" type="submit"name="inscription" value="Valider"/></p>
    </table>

    </form>
        <?php
        if(isset($_POST["inscription"]))
        {
          if(!empty($_POST['mdp']) AND  $_POST['mdp']  == $_POST['cmdp'] AND !empty($_POST['cmdp']) AND !empty($_POST['pseudo']) )
          {

            $mdp = md5($_POST['mdp']);
            $pseudo = htmlspecialchars($_POST['pseudo']);
            //$statu = $_POST['statut'];
            $statu = "NORMAL";
            //$accstatus = $_POST['accstatus'];
            $accstatus = "NOT BAN";

            include("connexion_bdd.php");
            $req = $bdd->prepare('INSERT INTO  user( username, pass, statu, accstatus ) VALUES(:pseudo, :pass, :statu, :accstatus)');
            $req->bindValue(':pseudo', $pseudo, PDO::PARAM_STR);
            $req->bindValue(':pass', $mdp, PDO::PARAM_STR);
            $req->bindValue(':statu', $statu, PDO::PARAM_STR);
            $req->bindValue(':accstatus', $accstatus, PDO::PARAM_STR);

            //printf($prenom);
            $req->execute();
            //header('Location: connexion.php');
            header('Location: index.php');
          }
          else {
            echo "Vous avez oublié un truc ou deux";
          }

        }

         ?>
</div>
  </body>
    </html>
