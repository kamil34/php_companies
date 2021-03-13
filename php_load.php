<?php
require 'database/php_mysqlconnection.php'; // MySQL Communication

    //checks the important conditions
    if (isset($db_error)) {

        exit('Check your database connection!');

    } else {

        require 'components/php_companies.php';

    }


?>