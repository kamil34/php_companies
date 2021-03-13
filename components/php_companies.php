<?php
require 'form.html'; // form

    if (!empty($_POST['forms_userid']) && !empty($_POST['forms_compnip'])) {

        require './modules/search_module.php';

        // some conditions
        if ($acc_id && $user_id && ($acc_id[0]['acc_id']) == ($user_id[0]['id'])) {
            echo "
                <p style='color: green;'>
                <strong>
                The data you have entered are correct.
                <br />
                NIP is assigned to the account.
                </strong>
                </p>";
        } else {
            echo "
                <p style='color: #ff0000;'>
                <strong>
                The data aren't match.
                <br />
                NIP isn't assigned to the account.
                </strong>
                </p>";
        }

        if (isset($_POST['forms_userid']) || isset($_POST['forms_compnip'])) {
            if (empty($_POST['forms_userid']) || (empty($_POST['forms_compnip']))) {
                echo "<p style='color: red;'><strong>You have to fill all fields to run the script.</strong></p>";
            }
        }

    }

?>
