<?php session_start(); ?>
<?php include("verif.php");?>
<?php include("connexion_bdd.php")?>
<?php include("menu.php")?>

<?php
$name=$_POST['animename'];
$studio=$_POST['studioname'];
$genre=$_POST['genre'];
$description=$_POST['description'];

$reponse = $bdd->query("SELECT *
                        FROM anime
                        WHERE animeName='$name'"
                        );

?>

<div class="conteneur">

      <h2 class="bienvenu"><?php echo $name?></h2>
    </br>
      <p class="genre"><span style="text-decoration: underline;">Studio :</span> <?php echo $studio;?></p>
      <p class="genre"><span style="text-decoration: underline;">Genre :</span> <?php echo $genre;?></p>
      <p class="genre"><span style="text-decoration: underline;">Description :</span> <?php echo $description;?></p>




</div>
