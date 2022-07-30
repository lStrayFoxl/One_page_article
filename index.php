<?php 
    $dbh = new PDO('mysql:host=localhost;dbname=one_page_article', "root", "root");

    $select = $dbh->query("SELECT * FROM `paragraph`");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>onePageArticle</title>
</head>
<body>
    
    <header class="header">
        <div class="container">
            <div class="header_menu">

                <div class="header_article">
                    <h1 class="article">Lorem ipsum</h1>
                </div>

                <div class="header_review">
                    <span class="view_review">View reviews</span>
                    <span class="leave_review">Leave feedback</span>
                </div>

            </div>
        </div>
    </header>

    <main class="main">
        <div class="container">

            <div class="article_title">
                <h2 class="title">Article title</h2>
            </div>

            <div class="content_article">
                <ul class="list_cont">
                    <li class="cont_title"><span class="title_text">Paragraph title</span></li>
                    <li class="cont_title"><span class="title_text">Paragraph title</span></li>
                    <li class="cont_title"><span class="title_text">Paragraph title</span></li>
                </ul>
            </div>

            <div class="text_content">

                <?php
                while($row = $select->fetch(PDO::FETCH_ASSOC)){
                    ?>

                    <div class="paragraphs">
                        <h3 class="parag_title"><?= $row['ptitle'] ?></h3>
                        <p class="parag"><?= $row['ptext'] ?></p>
                    </div>

                    <?php
                }
                ?>

                <div class="created_date">
                    <span class="date">Created on 04/03/2001</span>
                </div>

            </div>
        </div>   
    </main>

    <footer class="footer">
        <div class="container">

            <div class="create_author">
                <span class="author">Created by:<br>StrayFox</span>
            </div>

            <div class="contact_sect">
                <span class="contact_det">Contact details:</span>
                <div class="contact">
                    <span class="email">test@mail.ru</span>
                    <span class="email">test@mail.ru</span>
                    <span class="email">test@mail.ru</span>
                    <span class="email">test@mail.ru</span>
                </div>
            </div>

        </div>
    </footer>
    
</body>
</html>