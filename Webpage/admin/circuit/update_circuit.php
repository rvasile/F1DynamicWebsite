<?php
error_reporting(0);
?>
<html>
   
   <head>
      <title>Editare Circuit</title>
   </head>
   
   <body>
      <?php
         if(isset($_POST['update'])) {
            $dbhost = 'localhost';
            $dbuser = 'root';
            $dbpass = '';
            
            $conn = mysql_connect($dbhost, $dbuser, $dbpass);
            
            if(! $conn ) {
               die('Could not connect: ' . mysql_error());
            }
      

            $circuit_id = $_POST['IDCircuit'];
            $circuit_nume = $_POST['Nume'];
             $circuit_tara = $_POST['Tara'];
             $circuit_locatie = $_POST['Locatie'];
             $circuit_lungime = $_POST['Lungime'];
             $circuit_ture = $_POST['Numar_ture'];
             $circuit_gp = $_POST['Nume_Grand_Prix'];
             $circuit_istoric = $_POST['Istoric'];
             $circuit_image = $_POST['image'];
             
            
            $sql = "UPDATE circuit SET Nume = '{$circuit_nume}', Tara = '{$circuit_tara}', Locatie = '{$circuit_locatie}', Lungime = '{$circuit_lungime}', Numar_ture = '{$circuit_ture}', Nume_Grand_Prix = '{$circuit_gp}', Istoric = '{$circuit_istoric}', image = '{$circuit_image}' WHERE IDCircuit = '{$circuit_id}' ";
             
             
            mysql_select_db('formula1');
            $retval = mysql_query( $sql, $conn );
            
            if(! $retval ) {
               die('Could not update data: ' . mysql_error());
            }
            else {echo "Updated data successfully\n"; 
                  echo "<a href='../index.php'>Go Back To Dashboard</a>\n";
                 }
            
            mysql_close($conn);
         }else {
            ?>
               <form method = "post" action = "<?php $_PHP_SELF ?>">
                  <table width = "400" border =" 0" cellspacing = "1" 
                     cellpadding = "2">
                    
                      <tr>
                      <input type="hidden" name="id" value="$circuit_id" />
                      
                      </tr>
                      
                     <tr>
                        <td width = "100">Nume :</td>
                        <td><input name = "Nume" type = "text" 
                           id = "Nume"></td>
                     </tr>
                  
                     <tr>
                        <td width = "100">Tara :</td>
                        <td><input name = "Tara" type = "text" 
                           id = "Tara"></td>
                     </tr>
                  
                     <tr>
                        <td width = "100">Locatie: </td>
                        <td><input name = "Locatie" type = "text" id="Locatie" </td>
                     </tr>
                      
                     <tr>
                        <td width = "100">Lungime: </td>
                        <td><input name = "Lungime" type = "text" id="Lungime" </td>
                     </tr>  
                      
                      <tr>
                        <td width = "100">Ture: </td>
                        <td><input name = "Numar_ture" type = "text" id="Numar_ture" </td>
                     </tr>  
                      
                      <tr>
                        <td width = "100">Grand Prix: </td>
                        <td><input name = "Nume_Grand_Prix" type = "text" id="Nume_Grand_Prix" </td>
                     </tr>  
                      
                      <tr>
                        <td width = "100">Istoric: </td>
                        <td><input name = "Istoric" type = "text" id="Istoric" </td>
                     </tr>  
                      
                      <tr>
                        <td width = "100">Imagine: </td>
                        <td><input name = "image" type = "text" id="image" </td>
                     </tr>  
                      
                      
                       <tr>
                        <td width = "100">      </td>
                        <td></td>
                     </tr>
                  
                     <tr>
                        <td width = "100"> </td>
                        <td>
                           <input name = "update" type = "submit" 
                              id = "update" value = "Update">
                        </td>
                     </tr>
                  
                  </table>
               </form>
       
       
                   <div id='footer'>
                <table>
                    <tr>
                        <th><button type='button' class='btn btn-warning'><a href = '../index.php'>Admin Dashboard</a></button></th>

                    </tr>
                </table>
            </div>
       
            <?php
         }
      ?>
      
   </body>
</html>