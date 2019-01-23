<div class="title-1">Редактировать фильм</div>

<div class="panel-holder mt-80 mb-40">
    <form enctype="multipart/form-data" action="edit.php?id=<?=$film['id']?>" method="POST">

        <?php
                if ( !empty($errors)) {
                    foreach ($errors as $key => $film) {
                    echo "<div class='notify notify--error mb-20'>$film</div>";  
                    }
                }
            ?>

        <div class="form-group"><label class="label">Название фильма<input class="input" name="title" type="text" placeholder="Такси 2" value="<?=$film['title']?>" /></label></div>
        <div class="row">
            <div class="col">
                <div class="form-group"><label class="label">Жанр<input class="input" name="genre" type="text" placeholder="комедия" value="<?=$film['genre']?>" /></label></div>
            </div>
            <div class="col">
                <div class="form-group"><label class="label">Год<input class="input" name="year" type="text" placeholder="2000" value="<?=$film['year']?>" /></label></div>
            </div>
        </div>
        <div class="form-group">
            <textarea name="description" placeholder="Введите описание фильма" class="textarea mb-20"><?=$film['description']?></textarea>
        </div>
        <div class="mb-20">
			<input type="file" name="photo" /> 
		</div>
        <input class="button" type="submit" name="update-film" value="Обновить" />
    </form>
</div>