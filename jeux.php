<?php

require_once "header.php";
include "DAO.php";


$sql = "SELECT * FROM jeux";
            
$req = $db->query($sql); // or die('Erreur SQL !<br>'.$sql.'<br>'.$bdd->errorInfo());
// Affichage de chaque message (toutes les données sont protégées par htmlspecialchars)

while ($donnees = $req->fetch()) {
    
?>
 <div class="marge">
        <div class="row row-cols-1 row-cols-md-4">
           <div class="col mb-4">
              <div class="card h-100 border-dark">
                <img src="<?php echo $donnees["img_jeux"]?>" class="card-img-top" alt="card-image">
                <div class="card-body">
                  <h5 class="card-title"><?php echo htmlspecialchars($donnees["titre_jeux"]);?></h5>
                    <p class="card-text">
                        <p><?php echo htmlspecialchars($donnees["sous_titre_jeux"]);?>
                        <p>Date de sortie : <?php echo htmlspecialchars($donnees["date_sortie_jeux"])?></p>
                
                        <div class="rating"><!--
                        --><a href="#5" title="Donner 5 étoiles">☆</a><!--
                        --><a href="#4" title="Donner 4 étoiles">☆</a><!--
                        --><a href="#3" title="Donner 3 étoiles">☆</a><!--
                        --><a href="#2" title="Donner 2 étoiles">☆</a><!--
                        --><a href="#1" title="Donner 1 étoile">☆</a>
                        </div>
                    </p>
                </div>
              </div>
            </div>
        </div>
 </div>


 <!-- <p><?php echo htmlspecialchars($donnees["note_jeux"])?></p> -->
<?php
}
$req->closeCursor();

require_once "footer.php";

?>

