<?php
require("Entities/PilotEntity.php");

//Contains database related code for the CircuitPage
class PilotModel {

    function getPilotName(){
        require 'Credentials.php';

        //Open connection and SELECT db:

        mysql_connect($host,$user,$password) or die(mysql_error());
        mysql_select_db($database);
        $result = mysql_query("SELECT DISTINCT Nume FROM pilot ORDER BY Pozitie_actualul_sezon ASC") or die(mysql_error());
        $names=array();

        //Get data from database

        while($row = mysql_fetch_array($result)){
            array_push($names, $row[0]);
        }

        //Close connection and return result
        mysql_close();
        return $names;

    }

    //Returns an array of Circuit Entities
    function getPilotiByName($nume){
        require 'Credentials.php';

        //Open connection and SELECT db:
        mysql_connect($host,$user,$password) or die(mysql_error());
        mysql_select_db($database);

        $query = "SELECT * FROM pilot WHERE Nume LIKE '$nume'";
        $result = mysql_query($query) or die(mysql_error());
        $pilotArray = array();

        //Get data from db:
        while($row = mysql_fetch_array($result))
        {
            $nume = $row[1];
            $prenume = $row[2];
            $nationalitate = $row[3];
            $data_nasterii = $row[4];
            $numar = $row[5];
            $pozitie_actualul_sezon = $row[6];
            $puncte_sezon = $row[7];
            $puncte_general = $row[8];
            $podiumuri = $row[9];
            $campionate_mondiale_castigate = $row[10];
              $imagine= $row[11];




            //Create Pilot objects and store them in an array

            $pilot = new PilotEntity(0,$nume,$prenume,$nationalitate,$data_nasterii, $numar,$pozitie_actualul_sezon,$puncte_sezon,$puncte_general,$podiumuri,$campionate_mondiale_castigate,$imagine );
            array_push($pilotArray, $pilot);


            //Close connection and return result
            mysql_close();
            return $pilotArray;

        }


    }

}

?>
