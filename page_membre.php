<?php session_start(); ?>
<?php include("verif.php");?>
<?php include("connexion_bdd.php")?>
<?php include("menu.php")?>
<?php include("function_aimer.php");?>


<?php
// On démarre la session (ceci est indispensable dans toutes les pages de notre section membre)


// On récupère nos variables de session
 $id=$_SESSION['id'];


if (isset($_SESSION['name']) || isset($_SESSION['mdp'])) {
?>

</br>
<div class="conteneur">
	<h2 class="bienvenu">Bienvenu <?php echo $_SESSION['name']?> !</h2>
  <?php $genre1=genre1($id);
        $genre2=genre2($id,$genre1);
  ?>
  <p class="genre">A court d'idée ? On vous propose des oeuvres qui correspondent à votre goût !
  <p class="genre">Je vois que vous aimez les genres <?php echo $genre1; echo " et "; echo $genre2 ?></p>
  <p class="genre">N'hésitez pas à faire un tour dans l'onglet "Anime" pour découvrir de nouvelles choses ! </p>

  <br/>

<?php
}

else {

echo 'Les variables ne sont pas déclarées.';
}?>
</div>
