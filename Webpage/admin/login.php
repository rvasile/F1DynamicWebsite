


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login Page</title>
</head>
<body>
    <form method="post" action="validate-login.php" >
        <table border="1" >
            <tr>
                <td><label for="username">Username</label></td>
                <td><input type="text" 
                  name="username" id="username"></td>
            </tr>
            <tr>
                <td><label for="password">Password</label></td>
                <td><input name="password" 
                  type="password" id="password"></input></td>
            </tr>
            <tr>
                <td><input type="submit" value="Submit"/>
                <td><input type="reset" value="Reset"/>
                <td><input type="button" class="button_active" onclick="location.href='../index.php';" value="Home" /></td>
            </tr>
        </table>
    </form>
</body>
</html>