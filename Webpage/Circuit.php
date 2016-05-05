<?php
require 'Controller/CircuitController.php';
$circuitController = new CircuitController();

if(isset($_POST['locations']))
    {
        //Fill page with circuits of the selected types;
        $circuitTables = $circuitController->CreateCircuitTables($_POST['locations']);
    }

 else {
      //Page is loaded for the first time, no type selected -> Fetch all types
        $circuitTables = $circuitController->CreateCircuitTables('%');
      }

//Output page data
$title = 'Circuit Overview';
$content = $circuitController->createCircuitDropdownList(). $circuitTables;

include 'Template.php';



?>
