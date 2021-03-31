<?php

require_once "header.php";

include "DAO.php";

$sql = "SELECT * FROM jeux";
            
$req = $bdd->query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.$bdd->errorInfo());
// Affichage de chaque message (toutes les données sont protégées par htmlspecialchars)

while ($donnees = $reponse->fetch()) {
?>

<section class="container">
    <article class="article">
        <h3><?php echo htmlspecialchars($donnees["titre_jeux"]);?></h3>
        <p><?php echo htmlspecialchars($donnees["sous_titre_jeux"]);?></p>
        <p><?php echo htmlspecialchars($donnees["img_jeux"])?></p>       
        <p><?php echo htmlspecialchars($donnees["date_sortie_jeux"])?></p>
        <p><?php echo htmlspecialchars($donnees["note_jeux"])?></p>
    </article>
</section>

<?php
}
$req->closeCursor();

require_once "footer.php";

?>