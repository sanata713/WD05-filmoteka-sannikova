<div class="title-1">Фильмотека</div>

<?php foreach ($films as $key => $film) { ?>

<div class="card mb-20">
    <!-- row -->
    <div class="row">
        <!-- col-auto -->
        <div class="col-auto">
            <img height="200" src="<?=HOST?>data/films/min/<?=$film['photo']?>" alt="<?=$film['title']?>">
        </div>
        <!-- // col-auto -->
        <!-- second col -->
        <div class="col">
            <div class="card__header">
                <h4 class="title-4">
                    <?=$film['title']?>
                </h4>
                <div class="buttons">
                <?php if( isset($_SESSION['user'])) {
                    if($_SESSION['user'] == 'admin') { ?>
                        <a href="edit.php?id=<?=$film['id']?>" class="button button--edit">Редактировать</a>
                        <a href="?action=delete&id=<?=$film['id']?>" class="button button--remove">Удалить</a>
                <?php } } ?>                
                </div>
            </div>
            <div class="badge">
                <?=$film['genre']?>
            </div>
            <div class="badge">
                <?=$film['year']?>
            </div>
            <div class="mt-20">
                <a href="single.php?id=<?=$film['id']?>" class="button">Подробнее</a>
            </div>
        </div>
        <!-- // second col -->
    </div>
    <!-- // row -->
</div>

<?php } ?>
