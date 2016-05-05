<?php

$host="localhost";
$user="root";
$password="";
$database="formula1";

mysql_connect($host,$user,$password) or die(mysql_error());
mysql_select_db($database);


$q="SELECT IDCircuit,Nume, Tara, Locatie,Lungime,Numar_ture, Nume_Grand_Prix, Istoric,image FROM circuit c ORDER BY IDCircuit ASC
";
$r= mysql_query($q);
$rows = array();
while ($row = mysql_fetch_array($r)){
  $rows[] = $row;
}


?>

<!DOCTYPE html>
<html> 
	<head>
		
		<title>Admin Page</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
        <link href="config/css.php" rel="stylesheet" type="text/css" media="all" />
        <link href="../Styles/fonts.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    </head>
	

        <body>



                        <table width= '100%'>
                            <thead>
                                <tr>
                                    <th>Nume:</th>
                                    <th>Tara:</th>
                                    <th>Locatie:</th>
                                    <th>Lungime:</th>
                                    <th>Ture:</th>
                                    <th>GP:</th>
                                    <th width='450px'>Istoric:</th>
                                    <th>Imagine:</th>
                                    <th>Editeaza</th>
                                    <th><button type='button' class='btn btn-default'><a href="circuit/delete_circuit.php">Sterge</a></button></th>
                                    <th><button type="button" class="btn btn-default"><a href="circuit/insert_circuit.php">Adauga Circuit</a></button></th>

                                </tr>
                            </thead>


                            <tbody>
                                <?php

                                    foreach($rows as $v){
                                    echo"
                                    <tr>
                                        <td>$v[Nume]</td>
                                        <td>$v[Tara]</td>
                                        <td>$v[Locatie]</td>
                                        <td>$v[Lungime]</td>
                                        <td>$v[Numar_ture]</td>
                                        <td>$v[Nume_Grand_Prix]</td>
                                        <td height='350px'>$v[Istoric]</td>
                                        <td><img width='64px' height='64px' src ='$v[image]'></td>
                                        <td><button type='button' class='btn btn-default'><a href = 'circuit/update_circuit.php?id=$v[IDCircuit]'>Editeaza</a></button></td>   
                                      


                                    </tr>";
                                    }
                                    ?>
                            </tbody>

                        </table>
    
            <div id='footer'>
                <table>
                    <tr>
                        <th><button type='button' class='btn btn-warning'><a href = '../index.php'>Home Page</a></button></th>
                        <th><button type='button' class='btn btn-warning'><a href = './index.php'>Admin Dashboard</a></button></th>
                    </tr>
                </table>
            </div>
    
        </body>
    
</html>