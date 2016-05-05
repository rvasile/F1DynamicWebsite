<?php

$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="formula1"; // Database name 
$tbl_name="circuit"; // Table name 

// Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");

// select record from mysql 
$sql="SELECT * FROM circuit";
$result=mysql_query($sql);
?>

<table width="400" border="0" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<td colspan="5" bgcolor="#FFFFFF"><strong>Delete data in mysql</strong> </td>
</tr>

<tr>
    <td align="center" bgcolor="#FFFFFF"><strong>ID</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Nume</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Tara</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Locatie</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Lungime</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Numar_ture</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Nume GP</strong></td>

<td align="center" bgcolor="#FFFFFF"><strong>Imagine</strong></td>
<td align="center" bgcolor="#FFFFFF">&nbsp;</td>
</tr>
    
    
    
    

<?php
while($rows=mysql_fetch_array($result)){
    echo"

<tr>
   <td bgcolor='#FFFFFF'> $rows[IDCircuit]</td> 
<td bgcolor='#FFFFFF'>$rows[Nume]</td>
<td bgcolor='#FFFFFF'> $rows[Tara]</td>
<td bgcolor='#FFFFFF'> $rows[Locatie]</td>
<td bgcolor='#FFFFFF'>$rows[Lungime]</td>
    <td bgcolor='#FFFFFF'>$rows[Numar_ture]</td>
    <td bgcolor='#FFFFFF'>$rows[Nume_Grand_Prix]</td>
    <td bgcolor='#FFFFFF'>$rows[image]</td>
    
<td bgcolor='#FFFFFF'><a href='delete_acircuit.php?id=$rows[IDCircuit]'>Delete</a></td>
</tr> ";

?>

<?php
// close while loop 
}
?>

</table>

<?php
// close connection; 
mysql_close();
?>