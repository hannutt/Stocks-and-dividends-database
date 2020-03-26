<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
<h3>OMX Helsinki 25 osakkeiden osingot ja osakesuositukset 2019</h3>
<form method="post" action="">
Hae yhtiön nimellä: <input name="yhtio"><br>
Hae kaupankäyntitunnuksella: <input name="tunnus"><br>
<input type="submit" name="hakunappi" value="Hae">
</form>
<br>
<?php
//Ohjelma hakee osingon ja suosituksen stocks.sql tiedostosta yhtiön nimellä tai kaupankäyntitunnuksella.
include("tietokantayhteys.php"); //Avataan tietokantaanyhteys kantaan
//************************************************
if(isset($_REQUEST['hakunappi'])) { //jos nappia on painettu, niin suoritetaan allaoleva koodi.
	
	$kysely = $yhteys->prepare("SELECT * FROM omx25 WHERE yhtio= :yhtio OR tunnus= :tunnus"); //valitaan where-komennolla kenttä yhtiö 
	// tai tunnus taulusta omx25.
	$yhtio = $_REQUEST['yhtio']; //lomakkeelta tuleva yhtiön nimi
	$tunnus = $_REQUEST['tunnus']; //lomakkeelta tuleva yhtiön kaupankäyntitunnus.
	
	$kysely->bindParam(":tunnus",$tunnus); //sidotaan muuttuja tunnus ja tietokannan kenttä tunnus toisiinsa.
	$kysely->bindParam(":yhtio",$yhtio); //sidotaan muuttuja yhtiö ja tietokannan kenttä yhtiö toisiinsa.
	$kysely->execute(); //suoritetaan sql-lause eli haku kannasta. Tuloksena on $kysely-niminen array eli tulosjoukko 
	$rivi=$kysely->fetch();  //fetch-metodilla palautetaan kyselyn tuottamat rivit.
	echo"<strong>". $rivi['yhtio']. " osinko: " . $rivi['osinko'] . " €. " . " Suositus: ".$rivi['suositus'] . "</strong>";
	//näytetään haun tulokset tallentamalla ne omiin muuttujiinsa.
}
	?>

</body>
</html>