<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
</head>
<body>
<h3>OMX Helsinki 25 stock index recommendations and dividends in 2020</h3>
<form method="post" action="">
<table>
<tr>
<td>
Search by company name: 
</td>
<td>
<input name="yhtio"><br>
</tr>
</td>
<tr>
<td>
Search by trading ID: 
</td>
<td>
<input name="tunnus"><br>
</tr>
</td>
</table>
<br>
<input type="submit" name="hakunappi" value="Search">
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
	echo"<strong>". $rivi['yhtio']. " dividend: " . $rivi['osinko'] . " €. " . " Recommendation: ".$rivi['suositus'] . "</strong>";
	//näytetään haun tulokset tallentamalla ne omiin muuttujiinsa.
}
	?>

</body>
</html>