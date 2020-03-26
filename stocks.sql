CREATE DATABASE IF N  OT EXISTS stocks DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
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

INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('CARGOTEC',1.10,'CGCBV','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('VALMET',0.65,'VALMT','Lisää');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('ELISA',1.75,'ELISA','Myy');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('FORTUM',1.10,'FORTUM','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('HUHTAMÄKI',0.84,'HUH1V','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KESKO',2.34,'KESKOB','Vähennä'); 
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KONE',1.65,'KNEBV','Myy');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KONECRANES',1.20,'KCR','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('METSO',0.12,'METSO','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('METSÄ BOARD',0.20,'METSA','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NESTE',1.52,'NESTE','Lisää');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NOKIA',0.20,'NOKIA','Lisää');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NOKIAN RENKAAT',1.58,'NRE1V','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('NORDEA',0.69,'NDAFI','ei tiedossa');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('ORION',1.50,'ORNBV','Myy');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('OUTOKUMPU OYJ',0.15,'OUT1V','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('OUTOTEC OYJ',0.00,'OTE1V','Lisää');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('SAMPO',2.85,'SAMPO','Lisää') ;
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('STORA ENSO',0.10,'STERV','Lisää');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('TELIA',0.115,'TELIA1','Vähennä'); 
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('KEMIRA',0.53,'KEMIRA','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('TIETO',1.45,'TIETO','Lisää');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('UPM',1.30,'UPM','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('Wärtsilä',0.48,'WRT1V','Vähennä');
INSERT INTO omx25 (yhtio,osinko, tunnus,suositus) VALUES ('YIT',0.27,'YIT','Vähennä');


