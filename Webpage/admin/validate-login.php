

<?php

// Grab User submitted information
$user = $_POST["username"];
$pass = $_POST["password"];

// Connect to the database
$con = mysql_connect("localhost","root","");
// Make sure we connected succesfully
if(! $con)
{
    die('Connection Failed'.mysql_error());
}

// Select the database to use
mysql_select_db("formula1",$con);

$result = mysql_query("SELECT username,password FROM user WHERE username = '$user'");

$row = mysql_fetch_array($result);

if($row["username"]==$user && $row["password"]==$pass){
   echo"LoggedIn Succesfully, $row[username]! Welcome, please go to <a href='index.php'>Admin Panel</a>";
}
else
    echo"Sorry, your credentials are not valid, Please try again.  <a href='login.php'>Go to Login Page</a>";
    
?>

