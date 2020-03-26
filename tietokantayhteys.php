<?php
$yhteys = "mysql:host=localhost;dbname=stocks"; //valitaan tietokannaksi stocks -niminen kanta.
$kayttajatunnus = "root";
$salasana = "";
//virhetarkistus päälle eli poikkeuksien hallinta
try {
	$yhteys = new PDO($yhteys, $kayttajatunnus, $salasana); //luodaan yhteys -olio PDO -luokasta
	$yhteys->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$yhteys->exec("SET CHARACTER SET utf8;");//Varmistetaan merkistö
}
catch (PDOException $e) {
	die("Tietokantaan ei saada yhteyttä. Virhe: ".$e); //Jos yhteyttä saada muodostettua tulostetaan siitä ilmoitus
	                                                   // ja die-funktiolla lopetetaan sivun käsittely.
}
?>