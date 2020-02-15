CHANGELOG for "Docker for Symfony"
======================

* 1.0.6 (2020-01-26)
    * FEATURE   [PHP] Added ability to use imagecreatefromjpeg
    * FEATURE   [PHP] Added ability to change PHP version using command ./docker set php_version 5.6 / 7.0 / 7.2 / 7.3 / 7.4
    * FEATURE   [PHP] Added ability enable / disable xdebug using command ./docker set xdebug yes / no
    * FEATURE   [PHP] Added ability enable / disable ionCube using command ./docker set ioncube yes / no
    * BUGFIX    [PHP] Returned mcrypt extension into d4d.lt installation script

* 1.0.7 (2020-02-16)
    * BUGFIX    [PHP]   Remove xdebug from pecl installation if disabled
    * FEATURE   [MYSQL] Import MySQL database copy without using a password form the console 
    * FEATURE   [PHP]   Added ability to change max_execution_time in file .env
    * FEATURE   [NGINX] Added ability to put rewrite rules into file config/nginx/rewrite/project.conf
    * FEATURE   [NGINX] Added ability select SF vs SF + PWA configuration
    * FEATURE   [PMA]   Added phpMyAdmin auto login functionality