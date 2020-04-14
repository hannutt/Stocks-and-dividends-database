CREATE DATABASE IF NOT EXISTS stocks DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE stocks;

DROP TABLE IF EXISTS omx25;
CREATE TABLE omx25 (
id INT (10) AUTO_INCREMENT,
yhtio TEXT,
osinko FLOAT,
tunnus TEXT,
suositus TEXT,
PRIMARY KEY (id)
);

INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('CARGOTEC',1.20,'CGCBV','Buy/hold');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('VALMET',0.80,'VALMT','Outperfom');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('ELISA',1.85,'ELISA','Underperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('FORTUM',1.10,'FORTUM','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('HUHTAMÄKI',0.00,'HUH1V','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KESKO',2.52,'KESKOB','Hold'); 
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KONE',1.70,'KNEBV','Underperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KONECRANES',1.20,'KCR','Buy');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('METSO',1.47,'METSO','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('METSÄ BOARD',0.10,'METSA','Hold');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NESTE',1.02,'NESTE','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NOKIA',0.00,'NOKIA','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NOKIAN RENKAAT',0.79,'NRE1V','Hold');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NORDEA',0.40,'NDAFI','Underperform/sell');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('ORION',1.50,'ORNBV','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('OUTOKUMPU OYJ',0.10,'OUT1V','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('OUTOTEC OYJ',0.10,'OTE1V','Buy');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('SAMPO',2.20,'SAMPO','Outperfom') ;
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('STORA ENSO',0.10,'STERV','Outperfom');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('TELIA',0.164,'TELIA1','Hold'); 
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KEMIRA',0.56,'KEMIRA','Hold');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('TIETOEVRY',0.00,'TIETO','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('UPM',1.30,'UPM','Outperform');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('Wärtsilä',0.48,'WRT1V','Hold');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('YIT',0.28,'YIT','Outperfom');


