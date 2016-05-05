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
      

            $id = $_POST['IDSponsor'];
            $nume= $_POST['Nume'];
             $logo_sponsor = $_POST['logo_sponsor'];
            
             
            
            $sql = "UPDATE sponsori SET Nume = '{$nume}', logo_sponsor = '{$logo_sponsor}' WHERE IDSponsor = '{$id}' ";
             
             
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
                        <td width = "100">Nume :</td>
                        <td><input name = "Nume" type = "text" 
                           id = "Nume"></td>
                     </tr>
                  
                     <tr>
                        <td width = "100">Logo :</td>
                        <td><input name = "logo_sponsor" type = "text" 
                           id = "logo_sponsor"></td>
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