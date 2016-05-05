<?php
require ("Model/PilotModel.php");
include 'Model/Credentials.php';

//Contains non_db related function for the pilot page
class PilotController {
    function CreatePilotDropdownList(){
        $pilotModel = new PilotModel();
        $result = "<form action = '' method ='post' width = '200px'>
                  <strong>Selectati un pilot din lista:</strong>
                        <select name = 'names'>
                        <option value = '%'>Drivers</option>
                            ".$this->CreateOptionValues($pilotModel->getPilotName())."</select>
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


    function CreatePilotTables($names){
        $pilotModel = new PilotModel();
        $pilotArray = $pilotModel->getPilotiByName($names);
        $result1 = "";
      
        
        
       
                
        //Generate a pilotTable for each pilotEntity in array

        foreach ($pilotArray as $key => $pilot)

        {
            $result1 = $result1.
                        "<table  class = 'pilotTable'>

                        <tr>
                          <th colspan='10' width = '200px'><img src = '$pilot->imagine' /></th>
                          <td>   </td>
                        </tr>


                            <tr>

                                <th width = '75px'>Nume: </th>
                                <td>$pilot->nume</td>
                            </tr>

                            <tr>
                                <th>Prenume: </th>
                                <td>$pilot->prenume</td>
                            </tr>

                            <tr>
                                <th>Numar: </th>
                                <td>$pilot->numar</td>
                            </tr>

                            <tr>
                                <th>Nationalitate: </th>
                                <td>$pilot->nationalitate</td>
                            </tr>

                            <tr>
                                <th>Data nasterii: </th>
                                <td>$pilot->data_nasterii</td>
                            </tr>

                            <tr>
                                <th>Pozitie 2015: </th>
                                <td>$pilot->pozitie_actualul_sezon</td>
                            </tr>

                            <tr>
                                <th>Puncte 2015: </th>
                                <td >$pilot->puncte_sezon</td>
                            </tr>

                            <tr>
                                <th>Puncte general: </th>
                                <td >$pilot->puncte_general</td>
                            </tr>


                            <tr>
                                <th>Podiumuri : </th>
                                <td>$pilot->podiumuri</td>
                            </tr>

                            <tr>
                                <th>Winner: </th>
                                <td>$pilot->campionate_mondiale_castigate</td>
                            </tr> 
                            
                            
                            


                        </table>";
            
            return $result1;
            
          
            }
            
                    
        }
        



    }
    





?>
