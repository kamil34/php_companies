<?php

// removes unnecessary
$id = preg_replace("/[^0-9]+/", "", ($_POST['forms_userid']));
$nip = preg_replace("/[^0-9]+/", "", ($_POST['forms_compnip']));

// searches the table
$user_id = $db_connection->prepare('SELECT id FROM users WHERE id = :id');
$acc_id = $db_connection->prepare('SELECT acc_id FROM companies WHERE nip = :nip');

// executes with defined params
$user_id->execute([':id' => $id]);
$acc_id->execute([':nip' => $nip]);

// results
$user_id = $user_id->fetchAll();
$acc_id = $acc_id->fetchAll();

?>