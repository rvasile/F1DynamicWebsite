<?php

//Setup File:
error_reporting(0);

#Database Connection
include('config/connection.php');

#Constants:
DEFINE('D_TEMPLATE', 'template');


#Functions:

include('functions/template.php');
include('functions/datacirc.php');
include('functions/data.php');

# Site Setup:
$debug = data_setting_value($dbc, 'debug-status');

$site_title = 'Formula 1';


#Page Setup
$circuit = data_circuit($dbc,$id);

?>