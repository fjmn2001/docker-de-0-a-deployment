<?php

declare(strict_types=1);

use Twig\Environment;
use Twig\Loader\ArrayLoader;

require_once __DIR__ . '/vendor/autoload.php';

$database = [];

while (true) {
    $database[] = mt_rand();
}

$loader = new ArrayLoader([
    'index' => 'Hello {{ name }}!',
]);
$twig = new Environment($loader);

echo $twig->render('index', ['name' => 'Francisco Marcano']);