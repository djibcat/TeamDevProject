<?php
const DB_NAME = "jeuxvideos_blog";
const HOST = "localhost";
const USER = "root";
const MDP = "";

try
{
    $db = new PDO(
        'mysql:host='.HOST.';
        dbname='.DB_NAME.';
        charset=utf8',
        USER,
        MDP);

        echo 'connexion ok';
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

?>