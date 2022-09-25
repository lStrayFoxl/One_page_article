<?php

// Database connection
$dbh = new PDO('mysql:host=localhost;dbname=one_page_article', "root", "root");

// Processing the data of the comment creation form
if(isset($_GET["createBtn"])){
    $name = $_GET["enterName"];
    $comment = $_GET["enterCom"];

    $sql = "INSERT INTO `comments`(`nameCom`, `textCom`) VALUES (:name, :comment)";
    $params = [
        "name" => $name,
        "comment" => $comment
    ];
    $dbh->prepare($sql)->execute($params);
    header("Location: ../index.php");

}