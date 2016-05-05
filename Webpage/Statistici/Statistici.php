<?php

$host="localhost";
$user="root";
$password="";
$database="formula1";

mysql_connect($host,$user,$password) or die(mysql_error());
mysql_select_db($database);



$q="SELECT  Nume, Prenume, Nationalitate,Data_nasterii,Numar,Puncte_sezon,  Puncte_general, Podiumuri, Pozitie_actualul_sezon  FROM  pilot

	WHERE   Puncte_general  =

			(SELECT  MAX(Puncte_general) AS nrmax 

				FROM  pilot)

";
$r= mysql_query($q);
$rows = array();
while ($row = mysql_fetch_assoc($r)){
  $rows[] = $row;
}


$q1="SELECT Denumire,Rank, Tara,An_infiintare FROM echipa WHERE Rank = (SELECT MIN(Rank) AS bteam FROM echipa)

";

$r1= mysql_query($q1);
$rows1 = array();
while ($row1 = mysql_fetch_assoc($r1)){
  $rows1[] = $row1;
}


$q2="SELECT Nume, Prenume, Denumire from pilot INNER JOIN echipa ON pilot.IDEchipa = echipa.IDEchipa where echipa.IDEchipa = ( select IDEchipa from echipa WHERE IDEchipa = 3)";

$r2= mysql_query($q2);
$rows2 = array();
while ($row2 = mysql_fetch_assoc($r2)){
  $rows2[] = $row2;
}

$q3 = "SELECT m.Nume, m.Prenume,f.Functie,f.Salariu FROM membrii_echipa m INNER JOIN functie_membru f ON m.IDFunctie = f.IDFunctie WHERE m.IDFunctie IN (SELECT f.IDFunctie FROM functie_membru WHERE f.Salariu < 6000)
";


$r3= mysql_query($q3);
$rows3 = array();
while ($row3 = mysql_fetch_assoc($r3)){
  $rows3[] = $row3;
}


?>



<!DOCTYPE html>

<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link href="../Styles/default.css" rel="stylesheet" type="text/css" media="all" />
    <link href="../Styles/fonts.css" rel="stylesheet" type="text/css" media="all" />
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">


<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Stats</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    
</head>
    
    <body>
        <div id="wrapper">
            <div id="header-wrapper">
                <div id="header" class="container">
                    <div id="logo">
                        <h1><a href="www.formula1.com">F1 Website</a></h1>
                        <p>Design by Razvan Vasile</a></p>
                    </div>
                    <div id="social">
                        <ul class="contact">
                            <li><a href="https://www.facebook.com/pages/F1/115183428496570?fref=ts" class="icon icon-facebook"><span></span></a></li>
                        </ul>
                    </div>
                </div>
                <div id="menu" class="container">
                    <ul>
                        <li class="current_page_item"><a href="../index.php" accesskey="1" title="">Homepage</a></li>
                        <li><a href="../Pilot.php" accesskey="1" title="">Piloti</a></li>
                        <li><a href="../Echipa.php" accesskey="2" title="">Echipe</a></li> <!-- dropdown -->
                        <li><a href="../Circuit.php" accesskey="3" title="">Circuite</a></li>
                        <li><a href="../Masina.php" accesskey="4" title="">Masini</a></li>
                        <li><a href="../circuit_etapa.php" accesskey="5" title="">Etapa</a></li>
                        <li><a href="../admin/login.php" accesskey="6" title="">Admin</a></li>

                    </ul>
                </div>
            </div>

            <div class="datagrid4">
                <p2><strong><i>Cea mai buna echipa:</i></strong></p2>    
                <table>
                    <thead align = 'center' title= 'Cea mai buna echipa'>
                        
                        <tr>
                            <th width ='150px'><strong><i>Best Team</i></strong></th>
                            <th><strong>Denumire:</strong></th>
                            <th><strong>Tara:</strong></th>
                            <th width ='120px'><strong>Anul infiintarii:</strong></th>
                            <th><strong><i>Rank:</i></strong></th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        
                        foreach($rows1 as $v1){
                            
                        echo"
                        <tr>
                            <td> </td>
                            <td width = '150px'><strong>$v1[Denumire]</strong></td>
                            <td>$v1[Tara]</td>
                            <td>$v1[An_infiintare]</td>
                            <td><strong>$v1[Rank]</strong></td>
                           
                        </tr>";
                        }
                        
                        ?>
                    </tbody>
                </table>
    
            </div>
    
    
    
    <div class="datagrid4">
                <p2><strong><i>Cel mai bun pilot(overall):</i></strong></p2>     
                <table>
                    <thead align = 'center' title= 'Cel mai bun pilot'>
                        
                        <tr>
                            <th width ='180px'><strong><i>Best Driver</i></strong></th>
                            <th><strong>Nume:</strong></th>
                            <th><strong>Nationalitate:</strong></th>
                            <th width ='120px'><strong>Data nasterii:</strong></th>
                            <th><strong>Numar:</strong></th>
                            <th width='120px'><strong>Puncte sezon:</strong></th>
                            <th width = '120px'><strong><i>Puncte general:</i></strong></th>
                            <th><strong>Podiumuri:</strong></th>
                            <th width = '350px'><strong><i>Pozitie actualul sezon:</i></strong></th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        
                        foreach($rows as $v){
                            
                        echo"
                        <tr>
                            <td> </td>
                            <td width = '300px'><strong>$v[Prenume] $v[Nume] </strong></td>
                            <td>$v[Nationalitate]</td>
                            <td>$v[Data_nasterii]</td>
                            <td>$v[Numar]</td>
                            <td>$v[Puncte_sezon]</td>
                            <td>$v[Puncte_general]</td>
                            <td>$v[Podiumuri]</td>
                            <td>$v[Pozitie_actualul_sezon]</td>
                            
  
                        </tr>";
                        }
                        
                        ?>
                    </tbody>
                </table>
    
            </div>
    
    
    <div class="datagrid4">
                <p2><strong><i>Pilotii echipei RedBull:</i></strong></p2>     
                <table>
                    <thead align = 'center' title= 'RedBull Drivers'>
                        
                        <tr>
                            <th width ='180px'><strong><i>Pilotii RedBull</i></strong></th>
                            <th><strong>Nume:</strong></th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        
                        foreach($rows2 as $v2){
                            
                        echo"
                        <tr>
                            <td> </td>
                            <td width = '300px'><strong>$v2[Prenume] $v2[Nume] </strong></td>
                        
                        </tr>";
                        }
                        
                        ?>
                    </tbody>
                </table>
    
            </div>
    
    
    
      <div class="datagrid4">
                <p2><strong><i>Angajatii cu cele mai mici salarii:</i></strong></p2>     
                <table>
                    <thead align = 'center' title= 'RedBull Drivers'>
                        
                        <tr>
                            <th width ='180px'><strong><i>Nume</i></strong></th>
                            <th><strong>Functie: </strong></th>
                            <th> <strong><i>Salariu:</i></strong></th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        
                        foreach($rows3 as $v3){
                            
                        echo"
                        <tr>
                            
                            <td width = '300px'><strong>$v3[Prenume] $v3[Nume] </strong></td>
                            <td><strong>$v3[Functie]</strong> </td>
                            <td>$v3[Salariu] </td>
                        
                        </tr>";
                        }
                        
                        ?>
                    </tbody>
                </table>
    
            </div>
    
    
    
    
        <div id="portfolio-wrapper">
		<div id="portfolio" class="container">
			<div class="title">
				<h2><strong>Statistici</strong></h2>
				<span class="byline">Rezultatele campionatului de Formula 1</span> </div>
			<div class="column1">
				<div class="box">
					<h3><strong>Clasament</strong></h3>
					<p>Vezi mai jos clasamentul din anul 2015 pilotilor</p>
					<a href="Clasament_piloti.php" class="button">Clasament Piloti</a> </div>
			</div>
			<div class="column2">
				<div class="box">
					<h3><strong>Clasament</strong></h3>
					<p>Vezi mai jos clasamentul din anul 2015 pe echipe</p>
					<a href="Clasament_echipe.php" class="button">Clasament Echipe</a> </div>
			</div>
			
				<div class="column3">
				<div class="box">
					<h3><strong>Statistici generale</strong></h3>
					<p>Vezi mai jos statisticile generale ale Formulei 1 </p>
					<a href="Statistici.php" class="button">Stats</a> </div>
			</div>
            

            
            
		</div>
	</div>
    
            
         </div>
    
    
        <div id="footer">
            <p>&copy; Formula 1 Unofficial Website (FanSite) -- All rights reserved.</p>
        </div>
    
    </body>
</html>