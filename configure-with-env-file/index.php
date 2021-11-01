<?php

use Doctrine\DBAL\Configuration;
use Doctrine\DBAL\DriverManager;

require_once __DIR__ . '/vendor/autoload.php';

$connectionParams = [
    'dbname' => 'medine',
    'user' => getenv('MYSQL_USER'),
    'password' => getenv('MYSQL_PASSWORD'),
    'host' => getenv('MYSQL_HOST'),
    'driver' => 'pdo_mysql'
];

$config = new Configuration();
$connection = DriverManager::getConnection($connectionParams, $config);

$users = $connection->fetchAllAssociative("SELECT id, name, lastname FROM users");

var_dump($users);
