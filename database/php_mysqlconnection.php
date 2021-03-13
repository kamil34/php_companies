<?php
$config = require_once './config/php_config.php';

// MySQL connection + conditions

    try {

        $db_connection = new PDO("mysql:host={$config['db_server']};dbname={$config['db_database']};charset=utf8",
            $config['db_user'],
            $config['db_pass'], [
                PDO::ATTR_EMULATE_PREPARES => false,
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
            ]
        );


    } catch(PDOException $db_error) {

        exit('Check your database connection!');

    }

?>