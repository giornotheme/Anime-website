<?php session_start(); ?>
<?php include("verif.php");?>
<?php include("connexion_bdd.php")?>
<?php include("menu.php")?>

<?php $reponse = $bdd->query("SELECT *
                        FROM anime
                        ");
$id=$_SESSION['id'];
                        ?>

<div class="conteneur">
  <h2 class="liste_anime"> Toutes les oeuvres </h2>
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
              <td id="lolilol">
              <form method="post" action="add_anime.php">
              <input type="hidden" name="idanime" value="<?php echo $donnees['animeID'] ?>">
              <input type="hidden" name="iduser" value="<?php echo $id ?>">
              <input type="submit" value="ADD">
              </form>
              </td>
            </tr>

        <?php



        }


        ?>

      </table>
      </div>
