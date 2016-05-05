<?php


$host="localhost";
$user="root";
$password="";
$database="formula1";

mysql_connect($host,$user,$password) or die(mysql_error());
mysql_select_db($database);

$q="SELECT Denumire, Rank FROM echipa ORDER BY Rank ASC";
$r= mysql_query($q);
$rows = array();
while ($row = mysql_fetch_assoc($r)){
  $rows[] = $row;
}
?>


<!DOCTYPE html>


<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Clasamentul Constructorilor</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link href="Styles/default.css" rel="stylesheet" type="text/css" media="all" />
    <link href="Styles/fonts.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    
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
                        <li class="current_page_item"><a href="index.php" accesskey="1" title="">Homepage</a></li>
                        <li><a href="Pilot.php" accesskey="1" title="">Piloti</a></li>
                        <li><a href="Echipa.php" accesskey="2" title="">Echipe</a></li> <!-- dropdown -->
                        <li><a href="Circuit.php" accesskey="3" title="">Circuite</a></li>
                        <li><a href="Masina.php" accesskey="4" title="">Masini</a></li>
                        <li><a href="circuit_etapa.php" accesskey="5" title="">Etapa</a></li>
                        <li><a href="admin/login.php" accesskey="6" title="">Admin</a></li>
                    </ul>
                </div>
            </div>

            <div class="datagrid2">
                    
                <table>
                    <thead>
                        <tr>
                            <th width='120px'>Echipa</th>
                            <th width='70px'>Pozitie</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        
                        foreach($rows as $v){
                        echo"
                        <tr>
                            <td width='120px'>$v[Denumire]</td>
                            <td width='70px'>$v[Rank]</td>
                            
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
					<a href="Statistici/Statistici.php" class="button">Stats</a> </div>
			</div>
            
            
		</div>
	</div>
    
            
         </div>
    
    
        <div id="footer">
            <p>&copy; Formula 1 Unofficial Website (FanSite) -- All rights reserved.</p>
        </div>
    
    </body>
</html>
