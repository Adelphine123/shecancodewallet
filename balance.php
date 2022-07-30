<?php
$servername='localhost';
$username='root';
$password='';
$database='log';
$con=mysqli_connect($servername,$username,$password,$database);
if($con){
 echo "<h1>Thank you for creating account</h1>";
}
else{
 echo "not connected";
}

?>

<!DOCTYPE html>
<html>
<head>
<title>DIV3</title>
<link rel="stylesheet" type="text/css" href="ol.css">
</head>
<body bgcolor="silver">

<div >

<h1>YOU HAVE AN INITIAL BALANCE BONUS </h1><br>

<table border="1" width="200">
<thead>
<th>Initial Balance</th>
</thead>

<?php
$sql="SELECT * FROM balance";
$run=mysqli_query($con,$sql);
while($row=mysqli_fetch_array($run)){
$a=$row['initiolbalance'];
?>
<tr>
<td><?php echo $a;?></td>

</tr>
<?php } ?>
</table>
</div>
</body>
</html><br>
<html>
<head>
 <title>logout</title>
</head>
<body>
 <a href="LoginnFORM.php"><input type="submit" value="LOGOUT"></a>
</body>
</html>

