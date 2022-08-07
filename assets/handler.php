<?php

$dbh = new PDO('mysql:host=localhost;dbname=one_page_article', "root", "root");

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

    // if(empty($errors)){
    //     $sql = "INSERT INTO `comments`(`nameCom`, `textCom`) VALUES (:name, :comment)";
    //     $params = [
    //         "name" => $title,
    //         "comment" => $author
    //     ];
    //     $dbh->prepare($sql)->execute($params);
    //     header("Location: ../index.php");
    // }  
}