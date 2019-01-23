<?php 

// DB CONNECTION
require('config.php');
require('database.php');
$link = db_connect();
require('models/films.php');

if(@$_GET ['action'] == 'delete') {
    
    $result = film_delete($link, $_GET['id']);
    
    if ( $result ) {
		$resultInfo = "<p>Фильм был удален!</p>";
	} else {
		$resultError = "<p>Что то пошло не так.</p>";
    }
}

$film = get_film($link, $_GET['id']);

// echo "<pre>";
// print_r($film);
// echo "</pre>";


include('views/head.tpl');
include('views/notification.tpl');
include('views/film_single.tpl');
include('views/footer.tpl');

?>

