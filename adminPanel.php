<?php session_start(); ?>
<?php include("verif.php");


echo 'Sur cette page tu peux ajouter des animes à la ddb';
echo '<br />';
echo 'remplis les champs';

echo '<br />';
echo 'Le bail c\'est de remplir un champ trkl, puis de mettre un bouton qui va add direct sur la ddb AVEC un autre .php';

echo '<form action="add.php" method="post">';
echo 'nom anime : <input type="text" name="animename">';
echo '<br />';
echo 'genre de l`\'anime : <input type="text" name="gender"><br />';
echo 'nom du studio : <input type="text" name="studionom">';
echo '<br />';





//en dernier
echo '<input type="submit" value="send anime">';



?>
