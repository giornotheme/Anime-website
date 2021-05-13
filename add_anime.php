<?php session_start()?>
<?php
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = "anime";
// Try and connect using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	// If there is an error with the connection, stop the script and display the error.
	die ('Failed to connect to MySQL: ' . mysqli_connect_error()); }

// Prepare our SQL, preparing the SQL statement will prevent SQL injection.?>
<?php include("connexion_bdd.php");?>
<?php


$id = $_SESSION['id'];
$aid = $_POST['idanime'];


$req = $bdd->prepare('INSERT INTO anime_user ( user_id, anime_id ) VALUES(:iduser, :idanime)');
            $req->bindValue(':iduser', $id, PDO::PARAM_STR);
            $req->bindValue(':idanime', $aid, PDO::PARAM_STR);

            $req->execute();
            header ('location: liste_anime.php');

            exit();

 ?>
