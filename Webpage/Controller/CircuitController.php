<?php
require ("Model/CircuitModel.php");

//Contains non_db related function for the Circuit page
class CircuitController {
    function createCircuitDropdownList(){
        $circuitModel = new CircuitModel();
        $result = "<form action = '' method ='post' width = '200px'>
                  <strong>Selectati o locatie pentru a vizualiza circuitul:  </strong>
                        <select name = 'locations'>
                          <option value = '%'>Circuits</option>
                            ".$this->CreateOptionValues($circuitModel->getCircuitLocation())."</select>
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


    function CreateCircuitTables($locations){
        $circuitModel = new CircuitModel();
        $circuitArray = $circuitModel->getCircuitByLocations($locations);
        $result = "";

        //Generate a circuitTable for each circuitEntity in array

        foreach ($circuitArray as $key => $circuit)

        {
            $result = $result.
                        "

                        <table class = 'circuitTable'>
                            <tr>
                                <th width = '75px'>Nume: </th>
                                <td>$circuit->nume</td>
                            </tr>


                            <tr>
                                <th>Tara: </th>
                                <td>$circuit->tara</td>
                            </tr>

                            <tr>
                                <th>Locatie: </th>
                                <td>$circuit->locatie</td>
                            </tr>

                            <tr>
                                <th>Lungime: </th>
                                <td>$circuit->lungime</td>
                            </tr>

                            <tr>
                                <th>Ture: </th>
                                <td>$circuit->numar_ture</td>
                            </tr>

                            <tr>
                                <th>GrandPrix:</th>
                                <td>$circuit->nume_grand_prix</td>
                            </tr>

                            <tr>
                                <th>Descriere:</th>
                                <td>$circuit->istoric</td>
                            </tr>

                            
                            <tr>
                                    <th></th>
                                    <td rowspan='2' width = '150px'><img runat = 'server' src = '$circuit->image' /></td>
                            </tr>
                            
                            
                            


                        </table>";

            return $result;

        }



    }


}



?>
