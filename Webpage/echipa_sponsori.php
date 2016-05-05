<?php

$host="localhost";
$user="root";
$password="";
$database="formula1";

mysql_connect($host,$user,$password) or die(mysql_error());
mysql_select_db($database);

$id = $_GET['id'];

$q="SELECT Nume,logo_sponsor FROM sponsori s INNER JOIN echipe_sponsori x ON s.IDSponsor=x.IDSponsor JOIN echipa e ON e.IDEchipa = x.IDEchipa WHERE x.IDEchipa LIKE '$id'
";
$r= mysql_query($q);
$rows = array();
while ($row = mysql_fetch_assoc($r)){
  $rows[] = $row;
}


?>


<!DOCTYPE html>

<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
    <link href="Styles/default.css" rel="stylesheet" type="text/css" media="all" />
    <link href="Styles/fonts.css" rel="stylesheet" type="text/css" media="all" />

<html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
     <script src=”//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js”></script>
<link rel=”stylesheet” id=”font-awesome-css” href=”//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css” type=”text/css” media=”screen”>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Formula 1</title>
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
                        <li class="current_page_item"><a href="index.php" accesskey="1" title="">Homepage</a></li>
                        <li><a href="Pilot.php" accesskey="1" title="">Piloti</a></li>
                        <li><a href="Echipa.php" accesskey="2" title="">Echipe</a></li> <!-- dropdown -->
                        <li><a href="Circuit.php" accesskey="3" title="">Circuite</a></li>
                          <li><a href="Masina.php" accesskey="4" title="">Masini</a></li>
                        <li><a href="circuit_etapa.php" accesskey="5" title="">Etapa</a></li>
                        <li><a href="admin/login.php" accesskey="6" title="">Admin</a></li>
                        <li><a href="About-us.php" accesskey="7" title="">About Us</a></li>
                    </ul>
                </div>
            </div>

          <div class="datagrid2">
                    
                <table>
                    <thead>
                        <tr>
                            <th width='120px'>Denumire Sponsor:</th>
                            <th width ='120px'>Logo:</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                    <?php
                        
                        foreach($rows as $v){
                        echo"
                        <tr>
                            <td>$v[Nume]</td>
                            <td><img src='$v[logo_sponsor]'></td>
                            
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
					<h3>Accidentele Formulei 1</h3>
					<p>Vezi mai jos un clip cu cele mai spectaculoase accidente </p>
					<a href="https://www.youtube.com/watch?v=2h1BK2H2Quk" class="button">Video</a> </div>
			</div>
            
           <div class="column4">
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