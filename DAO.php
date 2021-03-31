<?php
$DB_NAME = "jeuxvideos_blog";
$HOST = "localhost";
$USER = "root";
$MDP = "";

try
{
    $db = new PDO(
        'mysql:host='.$HOST.';
        dbname='.$DB_NAME.';
        charset=utf8',
        $USER,
        $MDP);
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

?>