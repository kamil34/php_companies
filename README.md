## php_companies v1.0en
Script that checks if entered in forms data are correct with specified requirements.<br /><br />

## Installation:

1. Install **XAMPP** or use just **apache2** and **mysql**.
2. Start your **apache2** & **mysql** server (Linux) or open **XAMPP** Control Panel and start **Apache** & **MySQL** (Linux & Windows).
```
user@test:~$ sudo systemctl start mysqld.service
user@test:~$ sudo systemctl start apache2.service
```
3. Download the script manually (click "Code" & "Download ZIP") or use git:
```
user@test:~/Desktop/php_companies$ git clone https://github.com/kamil991/php_companies.git
```

4. Login to your database using **phpmyadmin** and **import php_companies.sql** file.<br />
localhost example:
```
http://localhost/phpmyadmin
```

5. Extract the files into your **www folder** and set up your **database credentials** in **\config\php_config.php file**.
5.1. Load the library in your page code, or just in "index.php":
```
<?php
include('php_load.php');
?>
```

6. Test the script to check if all is well by entering **localhost** site. You're done!

## What does actually "NIP" mean?
The point of the "NIP" is Polish companies have the tax identification number which name is "NIP".
This number is compulsory and very important.

## License:
This project uses **AGPLv3** license. <br />
Want to get more info about license? Check **LICENSE** file or check https://www.gnu.org/licenses/agpl-3.0.en.html.

## Found a bug?
You can contact me if you have found any bugs or something that can make the script worse.<br />
It may help me improving my project.

## Authors:
- [Kamil (kamil991)](https://github.com/kamil991).
