<!DOCTYPE html>
<html>
<head>
	<title>DEVICES</title>
</head>
<body>

<?php 

/*VERSIONE CON CHIAMATA SELECT A DATABASE MYSQL*/
		
////////////////////////////////////////////////////////////////////////////////

//CONNECTION METHOD
$user = 'root';
$pwd = '';
$dbname = 'giofil';

$conn = new mysqli("localhost", $user, $pwd, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


//////////////////////////////////////////////////////////////////////////////

//RICEVO CON METODO GET IL NOME DEL MIO DEVICE DA PHP_GET DI LISTA.PHP
	$name= $_GET['name'];


	// RISULTATO SPERATO

	echo "<p> [GET] Versione Dispositivo SPERATA: ".$name."<p>";
	echo "**********************************************";




//SELECT QUERY 

$sql = "SELECT * FROM devices";
$result = $conn->query($sql);


//SE HO ALMENO UN RISULTATO
if(	$result -> num_rows > 0)
{
	//DATA OUTPUT PER OGNI ROW
	print_r($result);

	//PER OGNI RIGA DELLA MIA QUERY DI RISULTATO
	while ($row = $result -> fetch_assoc())
	{
		echo "<p>Il Device ottenuto da query si chiama: ".$row["name"]."</p>";
		echo "<p>la sua descrizione è : </p>".$row["desc"];
		echo "<p>Il path della sua immagine è: ".$row["img"]."</p>";
	}
}
else
{
	echo "0 results";
}


///////////////////////////////////////////////////////////////////////////////

//TENTATIVO DI IMPLEMENTAZIONE OBJECT ORIENTED
  class Device
{
	public $name;
	public $description;
	public $img;

	public function __construct($device_name)
	{

		//CONNECTION METHOD
		$user = 'root';
		$pwd = '';
		$dbname = 'giofil';

		$conn = new mysqli("localhost", $user, $pwd, $dbname);
		// Check connection
		if ($conn->connect_error) {
		    die("Connection failed: " . $conn->connect_error);
		} 


		// SELECT QUERY + WHERE
		$sql = "SELECT * FROM devices WHERE name ='".$device_name."'";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();

		// CHIUSURA DI CONNESSIONE
		$conn -> close();

		$this -> name = $row["name"];
		$this -> description = $row["desc"];
		$this -> img = $row["img"];
	}

	public function device_display()
	{
		echo "<br>
			  /////////////////////////////////////////<br>";
		echo "Object Oriented Technology is Sexy! <br>";
		echo "<p>Il Device ottenuto da query si chiama: ".$this -> name;
		echo "<p>la sua descrizione è : </p>".$this -> description;
		echo "<p>Il path della sua immagine è: ".$this -> img;
	}
}

//ISTANZIAZIONE OGGETTO
$dev1 = new Device ($_GET["name"]);
$dev1-> device_display();


 // CHIUSURA DI CONNESSIONE
 $conn -> close();
 ?>

</body>
</html>