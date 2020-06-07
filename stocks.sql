CREATE DATABASE IF NOT EXISTS stocks DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE stocks;

DROP TABLE IF EXISTS omx25; /*jos omx25 niminen taulu on jo olemassa, niin poistetaan se*/
CREATE TABLE omx25 ( /*luodaan omx25 niminen taulu*/
id INT (10) AUTO_INCREMENT, /*luodaan perusavain tietuille, perusavain on yksillöllinen kokonaisluku, jota kasvatetaan auto increment
komennolla aina kun kantaan lisätään uutta tietoa*/
yhtio TEXT, /*lisätään tietokantaan kentät, text tarkoittaa, että kentän tietotyyppi on merkkijono, double tarkoittaa desimaalilukua*/ 
osinko DOUBLE,
tunnus TEXT,
suositus TEXT,
lahde TEXT,
PRIMARY KEY (id) /*annettaan id-kentälle lisämääre primary key, eli perusavain*/
);
/*insert into komennolla tietokantaan valitaan ensin kentät joihin tietoa lisätään ja values komennolla kerrotaan lisättävät tiedot*/
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('CARGOTEC',1.20,'CGCBV','Buy/hold','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('VALMET',0.80,'VALMT','Outperfom','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('ELISA',1.85,'ELISA','Underperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('FORTUM',1.10,'FORTUM','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('HUHTAMÄKI',0.00,'HUH1V','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('KESKO',2.52,'KESKOB','Hold','MarketScreener.com'); 
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('KONE',1.70,'KNEBV','Underperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('KONECRANES',1.20,'KCR','Buy','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('METSO',1.47,'METSO','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('METSÄ BOARD',0.10,'METSA','Hold','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('NESTE',1.02,'NESTE','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('NOKIA',0.00,'NOKIA','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('NOKIAN RENKAAT',0.79,'NRE1V','Hold','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('NORDEA',0.40,'NDAFI','Underperform/sell','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('ORION',1.50,'ORNBV','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('OUTOKUMPU OYJ',0.10,'OUT1V','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('OUTOTEC OYJ',0.10,'OTE1V','Buy','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('SAMPO',2.20,'SAMPO','Outperfom','MarketScreener.com') ;
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('STORA ENSO',0.10,'STERV','Outperfom','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('TELIA',0.164,'TELIA1','Hold','MarketScreener.com'); 
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('KEMIRA',0.56,'KEMIRA','Hold','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('TIETOEVRY',0.00,'TIETO','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('UPM',1.30,'UPM','Outperform','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('Wärtsilä',0.48,'WRT1V','Hold','MarketScreener.com');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus,lahde) VALUES ('YIT',0.28,'YIT','Outperfom','MarketScreener.com');


