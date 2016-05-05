<?php

$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="formula1"; // Database name 
// Table name 

// Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");

// select record from mysql 
$sql="SELECT * FROM sponsori";
$result=mysql_query($sql);
?>

<table width="400" border="0" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<td colspan="5" bgcolor="#FFFFFF"><strong>Delete Sponsori</strong> </td>
</tr>

<tr>
    <td align="center" bgcolor="#FFFFFF"><strong>ID</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Nume</strong></td>
<td align="center" bgcolor="#FFFFFF"><strong>Logo</strong></td>
<td align="center" bgcolor="#FFFFFF">&nbsp;</td>
</tr>
    
    
    
    

<?php
while($rows=mysql_fetch_array($result)){
    echo"

<tr>
   <td bgcolor='#FFFFFF'> $rows[IDSponsor]</td> 
<td bgcolor='#FFFFFF'>$rows[Nume]</td>
<td bgcolor='#FFFFFF'> $rows[logo_sponsor]</td>
<td bgcolor='#FFFFFF'><a href='delete_asponsor.php?id=$rows[IDSponsor]'>Delete</a></td>
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