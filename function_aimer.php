
<?php
function genre1($id)
{
  include("connexion_bdd.php");
  $reponse = $bdd->query("SELECT genre
                          FROM anime
                          LEFT JOIN anime_user ON animeID=anime_id
                          WHERE $id = user_id
                          GROUP BY genre
                          ORDER BY COUNT(genre) DESC
                          LIMIT 1"
                          );


while($donnees = $reponse->fetch())
  {
        return ($donnees['genre']);
  }

      $reponse->closeCursor();

}

function genre2($id,$genre1)
{
  include("connexion_bdd.php");
  $reponse = $bdd->query("SELECT genre
                          FROM anime
                          LEFT JOIN anime_user ON animeID=anime_id
                          WHERE $id = user_id AND genre != '$genre1'
                          GROUP BY genre
                          ORDER BY COUNT(genre) DESC
                          LIMIT 1"
                          );


while($donnees = $reponse->fetch())
  {

      return ($donnees['genre']);

  }

      $reponse->closeCursor();

}


function show_anime($id, $genre1, $genre2)
{
  include("connexion_bdd.php");
  $reponse = $bdd->query("SELECT *
                          FROM anime
                          INNER JOIN anime_user ON animeID=anime_id
                          WHERE genre = '$genre1' OR genre = '$genre2'
                          ");

  while($donnees = $reponse->fetch())
    {

      echo $donnees['animeName']; echo " ";

        }
        $reponse->closeCursor();
}
 ?>
