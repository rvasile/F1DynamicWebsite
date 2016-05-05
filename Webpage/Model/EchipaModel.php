<?php
require("Entities/EchipaEntity.php");

//Contains database related code for the CircuitPage
class EchipaModel {

    function getTeamDen(){
        require 'Credentials.php';

        //Open connection and SELECT db:

        mysql_connect($host,$user,$password) or die(mysql_error());
        mysql_select_db($database);
        $result = mysql_query("SELECT DISTINCT Short_Den FROM echipa ORDER BY IDEchipa ASC") or die(mysql_error());
        $dens=array();

        //Get data from database

        while($row = mysql_fetch_array($result)){
            array_push($dens, $row[0]);
        }

        //Close connection and return result
        mysql_close();
        return $dens;

    }

    //Returns an array of Circuit Entities
    function getTeamsByDen($short_den){
        require 'Credentials.php';

        //Open connection and SELECT db:
        mysql_connect($host,$user,$password) or die(mysql_error());
        mysql_select_db($database);

        $query = "SELECT * FROM echipa WHERE Short_Den LIKE '$short_den'";
        $result = mysql_query($query) or die(mysql_error());
        $echipaArray = array();

        //Get data from db:
        while($row = mysql_fetch_array($result))
        {
            $denumire = $row[1];
            $short_den= $row[2];
            $rank = $row[3];
            $tara = $row[4];
            $an_infiintare = $row[5];
            $image=$row[6];

            //Create Circuit objects and store them in an array

            $echipa = new EchipaEntity(0,$denumire, $short_den, $rank, $tara, $an_infiintare,$image);
            array_push($echipaArray, $echipa);


            //Close connection and return result
            mysql_close();
            return $echipaArray;

        }


    }

}

?>
