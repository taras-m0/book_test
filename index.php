<?php
/**
 * For alan.
 * User: ttt
 * Date: 31.10.2017
 * Time: 13:56
 */
error_reporting(E_ALL);
ini_set('display_errors', 1);

require_once __DIR__ . "/vendor/autoload.php";

// Инициализация БД
Model::instance('mysql:dbname=testdb;host=127.0.0.1', 'root', '');

include_once __DIR__ . '/autoload_smarty.php';

// Инициализация smarty
$smarty = new Smarty;
// $smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 120;
$smarty->addTemplateDir(__DIR__ . "/tmpl");
$smarty->setCacheDir( __DIR__ . "/templates_c");

// роутинг и запуск контроллера
$action = array_key_exists('action', $_GET) ? (string) $_GET['action'] : null;
$controller = new Controller($smarty);
if($action && method_exists($controller, $action)){
    print $controller->$action();
}else{
    print $controller->index();
}