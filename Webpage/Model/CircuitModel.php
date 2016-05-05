<?php
require("Entities/CircuitEntity.php");

//Contains database related code for the CircuitPage
class CircuitModel {

    function getCircuitLocation(){
        require 'Credentials.php';

        //Open connection and SELECT db:

        mysql_connect($host,$user,$password) or die(mysql_error());
        mysql_select_db($database);
        $result = mysql_query("SELECT DISTINCT Locatie FROM circuit ORDER BY Locatie ASC") or die(mysql_error());
        $locations=array();

        //Get data from database

        while($row = mysql_fetch_array($result)){
            array_push($locations, $row[0]);
        }

        //Close connection and return result
        mysql_close();
        return $locations;

    }

    //Returns an array of Circuit Entities
    function getCircuitByLocations($locatie){
        require 'Credentials.php';

        //Open connection and SELECT db:
        mysql_connect($host,$user,$password) or die(mysql_error());
        mysql_select_db($database);

        $query = "SELECT * FROM circuit WHERE Locatie LIKE '$locatie'";
        $result = mysql_query($query) or die(mysql_error());
        $circuitArray = array();

        //Get data from db:
        while($row = mysql_fetch_array($result))
        {
            $nume = $row[1];
            $tara = $row[2];
            $locatie = $row[3];
            $lungime = $row[4];
            $numar_ture = $row[5];
            $nume_grand_prix = $row[6];
            $istoric = $row[7];
            $image = $row[8];

            //Create Circuit objects and store them in an array

            $circuit = new CircuitEntity(0,$nume,$tara,$locatie,$lungime,$numar_ture,$nume_grand_prix,$istoric, $image);
            array_push($circuitArray, $circuit);


            //Close connection and return result
            mysql_close();
            return $circuitArray;

        }


    }

}

?>
