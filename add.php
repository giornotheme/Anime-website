<?php
session_start();
// Change this to your connection info.
$DATABASE_HOST = 'localhost';
$DATABASE_USER = 'root';
$DATABASE_PASS = '';
$DATABASE_NAME = "anime";
// Try and connect using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	// If there is an error with the connection, stop the script and display the error.
	die ('Failed to connect to MySQL: ' . mysqli_connect_error()); }

// Prepare our SQL, preparing the SQL statement will prevent SQL injection.

include("connexion_bdd.php"); //pdo

$n = $_POST['animename'];
$g = $_POST['gender'];
$s = $_POST['studionom'];

$req = $bdd->prepare('INSERT INTO anime ( animeName, studioName, genre) VALUES(:animename, :studionom, :gender)');
            $req->bindValue(':animename', $n, PDO::PARAM_STR);
            $req->bindValue(':studionom', $s, PDO::PARAM_STR);
            $req->bindValue(':gender', $g, PDO::PARAM_STR);

            $req->execute();
            header ('location: adminPanel.php');
/*
$n = mysqli_real_escape_string($con, $_POST['animename']);
$g = mysqli_real_escape_string($con, $_POST['gender']);
$s = mysqli_real_escape_string($con, $_POST['studionom']);
$sql = "INSERT INTO anime (animeName, studioName, genre) VALUES ('$n','$s','$g')";*/


/*if(mysqli_query($con, $sql) === TRUE){
    printf("gg");
}*/
/*else{
    //mysqli_close($con);
   header ('location: adminPanel.php');}*/


exit();


?>
