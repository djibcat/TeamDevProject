<?php

require_once "header.php";

include "DAO.php";

// Récupération du jeu
$req = $bdd->prepare('SELECT * FROM jeux');
$req->execute(array($_GET['jeux']));
$donnees = $req->fetch();
?>

<div>
    <h3>
        <?php echo htmlspecialchars($donnees['titre_jeux']); ?>
        <p> <?php echo $donnees['description_jeux']; ?></p>
    </h3>
</div>

<h2>Commentaires</h2>

<?php
$req->closeCursor(); // Important : on libère le curseur pour la prochaine requête

// Récupération des commentaires
$req = $bdd->prepare('SELECT * FROM commentaires WHERE id_jeux = ? ORDER BY date_commentaire');
$req->execute(array($_GET['jeux']));

while ($donnees = $req->fetch())
{
?>
<p><?php echo htmlspecialchars($donnees['nom_utilisateur']); ?> le <?php echo $donnees['date_post']; ?></p>
<p><?php echo nl2br(htmlspecialchars($donnees['commentaire'])); ?></p>
<?php
} // Fin de la boucle des commentaires
$req->closeCursor();

require_once "footer.php";

?>
