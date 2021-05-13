<?php session_start(); ?>
<?php include("verif.php");?>
<?php include("connexion_bdd.php")?>
<?php include("menu.php")?>

<?php

$id=$_SESSION['id'];
$reponse = $bdd->query("SELECT *
                        FROM anime LEFT JOIN anime_user ON animeID=anime_id
                        WHERE $id = user_id");
                        ?>

<div class="conteneur">
  <h2 class="liste_anime"> Ma liste </h2>
    <div class="tableau">
      <table>

          <tr class="ligne_titre">
            <td class="titre">Nom</td>
            <td class="titre">Studio</td>
            <td class="titre">Genre</td>
      </tr>

      <?php

      while($donnees = $reponse->fetch())
      {


          ?>
          <tr>
            <td>
              <form method="post" action="information.php">
              <input name="studioname" type="hidden" value = <?php echo $donnees['studioName'];?> />
              <input name="genre" type="hidden" value = <?php echo $donnees['genre'];?> />
              <textarea name="description" style="display:none;" type="hidden"> <?php echo $donnees['Description'];?></textarea>
              <button class="information" name="animename" type="submit" value= <?php echo $donnees['animeName'];?> ><?php echo $donnees['animeName']?> </button>
              </form>
            </td>
            <td><?php echo $donnees['studioName'];?></td>
            <td><?php echo $donnees['genre'];?></td>

          </tr>

      <?php



      }



$reponse->closeCursor();


?>
