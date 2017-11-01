<?php
/**
 * For alan.
 * User: ttt
 * Date: 31.10.2017
 * Time: 15:01
 */
define('SMARTY_SPL_AUTOLOAD', 1); // now smarty should use its own autoloader

function my_classes_loader($class) {
    $path = "{$class}.class.php";

    if (file_exists($path)) {
        include_once $path;
        return true;
    }

    return false;
}

spl_autoload_register('my_classes_loader');

