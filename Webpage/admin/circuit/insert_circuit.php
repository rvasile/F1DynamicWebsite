<?php
error_reporting(0);
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "formula1");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Escape user inputs for security
$id = $_POST['IDCircuit'];
$nume = mysqli_real_escape_string($link, $_POST['Nume']);
$tara = mysqli_real_escape_string($link, $_POST['Tara']);
$locatie = mysqli_real_escape_string($link, $_POST['Locatie']);
$lungime = $_POST['Lungime'];
$numar_ture = $_POST['Numar_ture'];
$nume_grand_prix = $_POST['Nume_Grand_Prix'];
$istoric = mysqli_real_escape_string($link, $_POST['Istoric']);
$image = $_POST['image'];
 
// attempt insert query execution
$sql = "INSERT INTO circuit ( Nume, Tara, Locatie, Lungime, Numar_ture, Nume_Grand_Prix, Istoric, image) VALUES ('$nume', '$tara', '$locatie', '$lungime', '$numar_ture', '$nume_grand_prix', '$istoric', '$image')";

$r= mysqli_query($link,$sql);

if($r == true){
    echo "Circuit adaugat cu succes!";
}
?>


        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Adauga un Circuit nou</title>
        </head>

        <body>

            <form action="insert_circuit.php" method="post">
                
                <table width = "400" border =" 0" cellspacing = "1" 
                     cellpadding = "2">
                  
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
                           <input name = "submit" type = "submit" 
                              id = "submit" value = "Submit">
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
            
        </body>
            
        </html>