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
<input type = "submit" name="searchbutton" value="Search">  
<input type = "submit" name="dividend" value = "Show highest dividend">
<input type = "submit" name="nopay" value = "Show companies that don't pay dividend">
<input type = "submit" name = "lowest" value= "Show lowest dividends">
</form>
<br>
<?php
//Ohjelma hakee osingon ja suosituksen stocks.sql tiedostosta yhtiön nimellä tai kaupankäyntitunnuksella.
include("tietokantayhteys.php"); //sisällytetään tietokantayhteys.php tiedosto ohjelmaan. Tiedoston avulla avataan yhteys stocks.sql tietokantaan.
//************************************************
if(isset($_REQUEST['searchbutton'])) { //Ehtolause, jos searchbutton nappia on painettu, niin suoritetaan allaoleva koodi.
	
	$kysely = $yhteys->prepare("SELECT * FROM omx25 WHERE yhtio= :yhtio OR tunnus= :tunnus"); //luodaan suoritettava sql-hakulause
	//valitaan where-komennolla kenttä yhtiö tai tunnus taulusta omx25.
	$yhtio = $_REQUEST['yhtio']; //lomakkeelta tuleva yhtiön nimi
	$tunnus = $_REQUEST['tunnus']; //lomakkeelta tuleva yhtiön kaupankäyntitunnus.
	
	$kysely->bindParam(":tunnus",$tunnus); //sidotaan muuttuja tunnus ja tietokannan kenttä tunnus toisiinsa.
	$kysely->bindParam(":yhtio",$yhtio); //sidotaan muuttuja yhtiö ja tietokannan kenttä yhtiö toisiinsa.
	$kysely->execute(); //suoritetaan sql-lause eli haku kannasta. Tuloksena on $kysely-niminen tulosjoukko 
	$rivi=$kysely->fetch();  //fetch-metodilla palautetaan kyselyn tuottamat rivit.
	echo"<strong>". $rivi['yhtio']. " dividend: " . $rivi['osinko'] . " €. " . " Recommendation: ".$rivi['suositus']. "<br>"."<br>" ."Recommender: " .$rivi['lahde'] ."</strong>";
	//näytetään haun tulokset tallentamalla ne omiin muuttujiinsa.
}
	



if (isset($_REQUEST['dividend'])) { 
	//laaditaan sql-hakulause, jossa max-funktiolla haetaan osinko-kenttään merkitty korkein arvo. Kenttä, josta arvo haetaan kerrotaan where komennolla.
	$kysely = $yhteys->prepare("SELECT osinko AS highest, yhtio FROM omx25 WHERE osinko =(SELECT MAX(osinko) FROM omx25)");
	$kysely->execute();
	$rivi=$kysely->fetch();
	echo "<strong>". $rivi['yhtio']." " .$rivi['highest']. " € " ."</strong>"; //tulostetaan yhtiö ja osingon määrä
}

if (isset($_REQUEST['nopay'])) {
	//laaditaan sql-hakulause ja valitaan lauseessa tietokannasta yhtiöt, joiden osinkoarvo on nolla.
	$kysely = $yhteys->prepare("SELECT osinko AS notpay, yhtio FROM omx25 WHERE osinko = 0 ");
	$kysely->execute();
	while ($rivi=$kysely->fetch()) { //käydään while-silmukassa läpi kaikki yhtiöt, joiden osinko on nolla.
		echo "<strong>". $rivi['yhtio']." ".$rivi['notpay']. " € "."<br>"."</strong>"; //tulostetaan yhtiöiden nimet,osingot ja rivinvaihto.
	}	
}

if (isset($_REQUEST['lowest'])) {
	//tietokannassa pienin osinko on 0.10, eli valitaan where-komennolla näytettäväksi yhtiöt, joiden osinko on em. summa.
	$kysely = $yhteys->prepare("SELECT osinko AS low, yhtio FROM omx25 WHERE osinko = 0.10");
	$kysely->execute();
	while ($rivi=$kysely->fetch()) {
		echo "<strong>". $rivi['yhtio']." ".$rivi['low']. " € "."<br>"."</strong>";
	}
}
?>

</body>
</html>