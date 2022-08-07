<?php 
    $dbh = new PDO('mysql:host=localhost;dbname=one_page_article', "root", "root");

    $sql_all = "SELECT * FROM `paragraph`";
    $sql_ptitle = 'SELECT `ptitle` FROM `paragraph`';
    $sql_allCom = "SELECT * FROM `comments`";

    $select_all = $dbh->query($sql_all);
    $select_ptitle = $dbh->query($sql_ptitle);
    $select_allCom = $dbh->query($sql_allCom);
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
                    <button class="view_review" id="viewBtn">View reviews</button>
                    <button class="leave_review" id="leaveBtn">Leave feedback</button>
                </div>

            </div>
        </div>
    </header>

    <section class="modal_sect">
        <div class="container">

            <div class="modal" id="modalView">
                <div class="modal_content">
                    <span class="close_createCom close">&times;</span>
                    <div class="input_info">
                        <form action="assets/handler.php" method="get" class="form_comment">

                            <legend class="title_create">Create review</legend>
                            <label for="enterName" class="name">Name:</label><br>
                            <input type="text" name="enterName" id="enterName" class="enter_name"><br><br>
                            <label for="enterCom" class="text_com">Text review:</label><br>
                            <textarea name="enterCom" id="enterCom" class="enter_com"></textarea><br><br>

                            <div class="center_btn">
                                <button type="submit" class="create_btn" name="createBtn">Create review</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

            <div class="modal" id="modalLeave">
                <div class="modal_content">
                    <span class="close_allCom close">&times;</span>
                    <div class="comments_all">
                        <div class="center_title">
                            <span class="title_modal">All comments</span>
                        </div>
                        
                        <?php
                        while($comment = $select_allCom->fetch(PDO::FETCH_ASSOC)){
                            ?>

                            <div class="comment_block">
                                <span class="name_commentator"><?= $comment['nameCom'] ?></span>
                                <div class="text_comment">
                                    <p class="text"><?= $comment['textCom'] ?></p>
                                </div>
                            </div>

                            <?php
                        }
                        ?>


                        <!-- <div class="comment_block">
                            <span class="name_commentator">Test_user</span>
                            <div class="text_comment">
                                <p class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean quis porta odio, 
                                    et bibendum libero. Nunc id neque convallis, pulvinar libero non, mollis enim. Aenean cursus 
                                    lectus vel lectus convallis, non placerat arcu aliquam. Nunc nibh arcu, dictum ac.</p>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>

            <script src="script.js"></script>

        </div>
    </section>

    <main class="main">
        <div class="container">

            <div class="article_title">
                <h2 class="title">Article title</h2>
            </div>

            <div class="content_article">
                <ul class="list_cont">
                    <?php
                    while($ruw = $select_ptitle->fetch(PDO::FETCH_ASSOC)){
                        ?>

                        <li class="cont_title"><button class="title_text"><?= $ruw['ptitle'] ?></button></li>

                        <?php
                    }
                    ?>

                    <!-- <li class="cont_title"><span class="title_text">Paragraph title</span></li>
                    <li class="cont_title"><span class="title_text">Paragraph title</span></li>
                    <li class="cont_title"><span class="title_text">Paragraph title</span></li> -->
                </ul>
            </div>

            <div class="text_content">

                <?php
                while($row = $select_all->fetch(PDO::FETCH_ASSOC)){
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