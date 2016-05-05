<?php
require ("Model/EchipaModel.php");

//Contains non_db related function for the Circuit page
class EchipaController {
    function createEchipaDropdownList(){
        $echipaModel = new EchipaModel();
        $result = "<form action = '' method ='post' width = '200px'>
                  <strong>Selectati o echipa:</strong>
                        <select name = 'dens'>
                            ".$this->CreateOptionValues($echipaModel->getTeamDen())."</select>
                    <input type = 'submit' value = 'Search' />
                    </form>";

        return $result;
    }


    function CreateOptionValues(array $valueArray ){

        $result = "";

        foreach ($valueArray as $value)
        {
            $result = $result . "<option value = '$value'>$value</option>";
        }


        return $result;
    }


    function CreateTeamTables($dens){
        $echipaModel = new EchipaModel();
        $echipaArray = $echipaModel->getTeamsByDen($dens);
        $result = "";

        //Generate a circuitTable for each circuitEntity in array

        foreach ($echipaArray as $key => $echipa)

        {
            $result = $result.
                        "<table class = 'echipaTable'>
                            <tr>
                                
                                <th><img runat = 'server' src = '$echipa->image' width:150px height:150px /></th>
                        </tr>
                      
                          <tr>
                            <th width = '75px'>Denumire </th>
                            <td><a href='membrii_echipa.php'>$echipa->denumire</a></td>
                          </tr>

                        <tr>
                            <th>Rank: </th>
                            <td>$echipa->rank</td>
                        </tr>

                        <tr>
                            <th>Nationalitate: </th>
                            <td>$echipa->tara</td>
                        </tr>

                        <tr>
                            <th>Anul infiintarii:</th>
                            <td>$echipa->an_infiintare</td>
                        </tr>

                        </table>";

            return $result;

        }


    }


}



?>
