<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">

</head>
<body>
<!-- html-määrittelyt otsikolle,syötekentille ja painonapille --> 
<h3>OMX Helsinki 25 stock index database update tool</h3>
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
<input type = "submit" name = "searchbutton" value = "Search">
</form>
<?php
include ("tietokantayhteys.php"); //sisällytetään tietokantayhteys.php tiedosto ohjelmaan.
if(isset($_REQUEST["searchbutton"])) {//ehtolause jos searchbutton painiketta on painettu, suoritetaan alla oleva sql-lause.
	//joka on tallennettu kysely muuttujaan.
	$kysely = $yhteys->prepare("SELECT * FROM omx25 WHERE yhtio = :yhtio OR tunnus = :tunnus");
	$yhtio = $_REQUEST["yhtio"]; //tallennetaan muuttujiin lomakkeelta tulevat tiedot eli yhtiön nimi tai kaupankäyntitunnus.
	$tunnus = $_REQUEST["tunnus"];
	
	$kysely->bindParam(":yhtio",$yhtio); //sidotaan muuttuja yhtio ja tietokannan kenttä yhtiö toisiinsa.
	$kysely->bindParam(":tunnus",$tunnus); //sidotaan muuttuja tunnus ja tietokannan kenttä tunnus toisiinsa.
	$kysely->execute();//suoritetaan ylempänä kirjoitettu, kyselymuuttujaan tallennettu sql-lause eli haku tietokannasta.
	$rivi=$kysely->fetch();//fetch-metodilla palautetaan kyselyn tuottamat rivit.
	?>
	
	<!-- html-määrittelyt lomakkeelle. -->
	<h4> Update Dividend and recommendation</h4>
	<form method="post" action="updateTool.php">
	<input type="hidden" name="yhtio" value="<?php echo $rivi["yhtio"];?>">
	Dividend:<input name="osinko" value="<?php echo $rivi["osinko"];?>"><br/>
	Recommendation:<input name = "suositus" value = "<?php echo $rivi["suositus"];?>"><br>
	<br>
	<input name="updatebtn" type="submit" value="Update"/>
	</form>

<?php
}
if (isset($_REQUEST["updatebtn"])) {//jos updatebtn on painettu, suoritetaan allaoleva koodi.
	$kysely = $yhteys->prepare("UPDATE omx25 SET osinko = :osinko, suositus = :suositus WHERE yhtio = :yhtio");
	//luodaan sql-lause, joka päivittää update komennolla tietokannan osinko ja suositustiedot. 
	$yhtio = $_REQUEST["yhtio"];
	$osinko = $_REQUEST["osinko"];
	$suositus = $_REQUEST["suositus"];
	$kysely->bindParam(":yhtio",$yhtio);
	$kysely->bindParam(":osinko",$osinko);
	$kysely->bindParam(":suositus",$suositus);
	$kysely->execute();//suoritetaan ylempänä määritelty sql-lause eli päivitetään tiedot tietokantaan.
	echo "<br>";
	echo "Information updated!";
}
?>
</body>
</html>
	
	
