<div class="title-1">Укажите ваши данные</div>

    <form enctype="multipart/form-data" action="set-cookie.php" method="POST" class="mb-50">

        <div class="form-group"><label class="label">Ваше имя<input class="input" name="user-name" type="text" placeholder="" /></label></div>
        <div class="form-group"><label class="label">Ваш город<input class="input" name="user-city" type="text" placeholder="" /></label></div>

        <input class="button" type="submit" name="user-submit" value="Сохранить" />
    </form>
    
   <form enctype="multipart/form-data" action="unset-cookie.php" method="POST">

        <input class="button" type="submit" name="user-unset" value="Удалить данные" />
    </form>