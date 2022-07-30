<?php

$servername = "localhost";
$username = "root";
$password ="";
$db = "log";

$con = mysqli_connect($servername, $username, $password,$db);

if (isset($_POST['Username'])){

$username=$_POST['Username'];
 $password=$_POST['Password'];
 
 $sql="select * from registration where Username='".$username."'AND Password='".$password."' limit 1";

 $result=mysqli_query($con,$sql);

 if(mysqli_num_rows($result)==1){
echo "<h1> you have successfully logged in </h1>";
header('location:Homepage.html');
 exit();
}
else{
 echo "<h1>Incorrect username or password </h1>";
 exit();
}
}

?>



<!DOCTYPE html>
<head>
    <title>Loginn </title>

    <link rel="stylesheet"href="Login style.css">
</head>

<body>
  <div class="menu">
		<ul>
			<li><a href="Homepage.html">HOME</a></li>
  <li>	<a href="Balance.html">SERVICE</a></li>
	<li><a href="Overview.html">OVERVIEW</a></li>
	<li><a href="About.html">ABOUT</a></li>
<li><a href="contact.html">CONTACT US</a></li>
<li><a href="LoginnFORM.php">LOGIN</a></li>
<li><a href="RegistrationForm.php">SIGN UP</a></li>
	</ul>	
	</div>
 
<div>
<form action="#"method="post">
<center>
    <table border="0"cellspacing="10"class="table">
        <tr><td colspan="2"> 
            <center> 
<h1>LOGIN FORM</h1></center>
</td></tr>
    <tr>  
        <td><label for="Username">Username</label></td>   
     <td> <input type="text" placeholder="Username" name="Username"/></td>
    </tr>
<tr>
<td><label for="Password">Password</label></td>
      <td><input type="Password" placeholder="Password" name="Password"/></td>
      </tr><tr>
      <td colspan="2"><center><input type="submit" value="Log in"name="send"></center></td>
      </tr>
      <tr>
      <td colspan="2"><center><p class="message">Not registered? <a href="Registration Form.html">Create an account</a></p></center></td>
      </tr>
      </table>
      </center>
    </form>
</div>
</body>
</html>