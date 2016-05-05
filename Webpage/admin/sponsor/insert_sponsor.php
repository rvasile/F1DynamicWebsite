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
$nume = mysqli_real_escape_string($link, $_POST['Nume']);
$logo = $_POST['logo_sponsor'];
 
// attempt insert query execution
$sql = "INSERT INTO sponsori (Nume, logo_sponsor) VALUES ('$nume', '$logo')";

$r= mysqli_query($link,$sql);

if($r == true){
    echo "Sponsor adaugat cu succes!";
} else {
    echo "eroare!";
}


?>


        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="UTF-8">
            <title>Adauga un Sponsor nou</title>
        </head>

        <body>

            <form action="insert_sponsor.php" method="post">
                
                <p>
                    <label for="Nume"><strong>Nume :</strong></label>
                    <input type="text" name="Nume" id="Nume">
                </p>

                
                  <p>
                    <label for="logo_sponsor">Logo:</label>
                    <input type="text" name="logo_sponsor" id="logo_sponsor">
                </p>

                <input type="submit" value="Submit">
                
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