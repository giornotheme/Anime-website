<?php
session_start();
include("verif.php");
//On se connecte à la DDB
$DATABASE_HOST = 'teampantwo1.mysql.db';
$DATABASE_USER = 'teampantwo1';
$DATABASE_PASS = 'Whatispos92';
$DATABASE_NAME = "teampantwo1";
// Try and connect using the info above.
$con = mysqli_connect($DATABASE_HOST, $DATABASE_USER, $DATABASE_PASS, $DATABASE_NAME);
if ( mysqli_connect_errno() ) {
	// If there is an error with the connection, stop the script and display the error.
	die ('Failed to connect to MySQL: ' . mysqli_connect_error()); }


    // Now we check if the data from the login form was submitted, isset() will check if the data exists.
if ( !isset($_SESSION['name'], $_SESSION['mdp']) ) {
	// Could not get the data that should have been sent.
	die ('Please fill both the username and password field!');
}
//echo 'test1';
// Prepare our SQL, preparing the SQL statement will prevent SQL injection.
if ($stmt = $con->prepare('SELECT statu from user WHERE username = ?')) {
	// Bind parameters (s = string, i = int, b = blob, etc), in our case the username is a string so we use "s"

    $stmt->bind_param('s', $_SESSION['name']);
	$stmt->execute();
	// Store the result so we can check if the account exists in the database.
	$stmt->store_result();

    if ($stmt->num_rows > 0) {
        $stmt->bind_result($accstat);
        $stmt->fetch();
        // Le compte existe, on vérifie maintenant que le mec est bien admin
        if ('ADMIN'== $accstat) {
            //Le mec est admin
            //On stock juste qu'il est admin
            $_SESSION['admin'] = true;


            header ('location: adminPanel.php');
        } else {
            echo 'You are not admin!';
        }
    } else {
        echo 'Error';
    }


	$stmt->close();

}

exit();
?>
