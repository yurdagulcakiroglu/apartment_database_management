
CREATE TABLE BINA(   
blok_no NUMBER(2) NOT NULL,   
kat_sayisi NUMBER(2) NOT NULL,   
daire_sayisi NUMBER(3) NOT NULL,   
PRIMARY KEY(blok_no)    
)  ;

CREATE TABLE GOREV(   
gorev_id NUMBER(2) NOT NULL,   
personel_gorev VARCHAR2(40) NOT NULL,   
PRIMARY KEY(gorev_id)   
)  ;

CREATE TABLE DAIRELER(   
daire_id NUMBER(5) NOT NULL,   
daire_no NUMBER(3) NOT NULL,   
daire_kat NUMBER(2) NOT NULL,   
blok_no NUMBER(2) NOT NULL,   
daire_m2 NUMBER(5,2) NOT NULL,   
yasayan_kisi_sayisi NUMBER(2) NOT NULL,   
PRIMARY KEY(daire_id),   
FOREIGN KEY(blok_no) REFERENCES BINA(blok_no)   
)  ;

CREATE TABLE DAIRE_SAHIPLERI(   
sahip_id VARCHAR2(10)  NOT NULL,   
isim     VARCHAR2(40) NOT NULL,   
telefon  VARCHAR2(11) NOT NULL,   
daire_id NUMBER(5)  NOT NULL,   
PRIMARY KEY(sahip_id),   
FOREIGN KEY(daire_id) REFERENCES DAIRELER(daire_id)   
)  ;

CREATE TABLE SAKINLER(   
sakin_id VARCHAR2(10) NOT NULL,   
daire_id NUMBER(5) NOT NULL,   
isim VARCHAR2(40) NOT NULL,   
telefon VARCHAR2(11) NOT NULL, 
PRIMARY KEY(sakin_id),   
FOREIGN KEY(daire_id) REFERENCES DAIRELER(daire_id)   
)  ;

CREATE TABLE ARAC(   
plaka VARCHAR2(10) NOT NULL,   
park_no VARCHAR2(12) NOT NULL,   
sakin_id VARCHAR2(10) NOT NULL,   
PRIMARY KEY(plaka),   
FOREIGN KEY(sakin_id) REFERENCES SAKINLER(sakin_id)   
)  ;

CREATE TABLE PERSONEL(   
personel_id NUMBER(6) NOT NULL,   
isim VARCHAR2(40) NOT NULL,   
telefon VARCHAR2(11) NOT NULL,   
gorev_id NUMBER(2) NOT NULL,   
PRIMARY KEY(personel_id),   
FOREIGN KEY(gorev_id) REFERENCES GOREV(gorev_id)   
)  ;

CREATE TABLE BINA_PERSONEL(   
personel_id NUMBER(6) NOT NULL,   
blok_no NUMBER(2) NOT NULL,    
FOREIGN KEY(blok_no) REFERENCES BINA(blok_no),   
FOREIGN KEY(personel_id) REFERENCES PERSONEL(personel_id)   
)  ;

ALTER TABLE DAIRELER   
ADD sahip_id VARCHAR2(10)  ;

ALTER TABLE DAIRELER   
ADD CONSTRAINT Fk_Daireler_DaireSahipleri FOREIGN KEY(sahip_id) REFERENCES DAIRE_SAHIPLERI(sahip_id) ;

ALTER TABLE SAKINLER   
ADD plaka VARCHAR2(10) ;

ALTER TABLE SAKINLER   
ADD CONSTRAINT Fk_Sakinler_Plaka FOREIGN KEY(plaka) REFERENCES ARAC(plaka) ;

INSERT INTO BINA (blok_no, kat_sayisi, daire_sayisi)  
VALUES (1, 4, 60);

INSERT INTO BINA (blok_no, kat_sayisi, daire_sayisi)  
VALUES (2, 3, 45);

INSERT INTO BINA (blok_no, kat_sayisi, daire_sayisi)  
VALUES (3, 5, 75);

INSERT INTO GOREV (gorev_id, personel_gorev)  
VALUES (1, 'Güvenlik');

INSERT INTO GOREV (gorev_id, personel_gorev)  
VALUES (2, 'Temizlik');

INSERT INTO GOREV (gorev_id, personel_gorev)  
VALUES (3, 'Bakım');

INSERT INTO GOREV (gorev_id, personel_gorev)  
VALUES (4, 'Bahçe Bakıcısı');

INSERT INTO GOREV (gorev_id, personel_gorev)  
VALUES (5, 'Kapıcı');

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (1, 101, 1, 1, 80.50, 2,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (2, 102, 1, 1, 75.20, 1,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (3, 201, 2, 1, 90.00, 3,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (4, 202, 2, 1, 65.75, 1,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (5, 301, 3, 1, 110.30, 3,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (6, 302, 3, 1, 95.60, 2,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (7, 101, 1, 2, 70.00, 2,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (8, 102, 1, 2, 85.25, 2,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (9, 201, 2, 2, 100.90, 1,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (10, 202, 2, 2, 75.50, 2,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (11, 301, 3, 2, 120.00, 1,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (12, 302, 3, 2, 85.75, 2,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (13, 101, 1, 3, 95.20, 2,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (14, 102, 1, 3, 80.75, 1,  NULL) ;

INSERT INTO DAIRELER (daire_id, daire_no, daire_kat, blok_no, daire_m2, yasayan_kisi_sayisi, sahip_id)  
VALUES (15, 201, 2, 3, 105.90, 2, NULL) ;

SELECT * 
FROM DAIRELER;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00001', 'Jeff Winger', '555-1234', 1) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00002', 'Annie Edison', '555-5678', 2) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00003', 'Troy Barnes', '555-9876', 3) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00004', 'Abed Nadir', '555-4321', 4) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00005', 'Britta Perry', '555-8765', 5) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00006', 'Shirley Bennett', '555-2345', 6) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00007', 'Pierce Hawthorne', '555-7654', 7) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00008', 'Dean Pelton', '555-3456', 8) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00009', 'Ben Chang', '555-6543', 9) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00010', 'Magnitude', '555-7890', 10) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00011', 'Leonard Rodriguez', '555-0987', 11) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00012', 'Vicki Jenkins', '555-8901', 12) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00013', 'Garrett Lambert', '555-1098', 13) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00014', 'Todd Jacobson', '555-9012', 14) ;

INSERT INTO DAIRE_SAHIPLERI (sahip_id, isim, telefon, daire_id)  
VALUES ('SAH00015', 'Rich Stephenson', '555-2109', 15) ;

SELECT * 
FROM  DAIRE_SAHIPLERI;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00001', 1, 'Troy Barnes', '555-1111', NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00002', 2, 'Annie Edison', '555-2222',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00003', 3, 'Jeff Winger', '555-3333',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00004', 4, 'Abed Nadir', '555-4444',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00005', 5, 'Britta Perry', '555-5555',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00006', 6, 'Shirley Bennett', '555-6666',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00008', 8, 'Dean Pelton', '555-8888',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00009', 9, 'Ben Chang', '555-9999',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00010', 10, 'Magnitude', '555-0000',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00011', 11, 'Leonard Rodriguez', '555-1010', NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00012', 12, 'Vicki Jenkins', '555-2020',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00013', 13, 'Garrett Lambert', '555-3030',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00014', 14, 'Todd Jacobson', '555-4040',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00015', 15, 'Rich Stephenson', '555-5050',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00005', 5, 'Britta Perry', '555-5555',  NULL) ;

INSERT INTO SAKINLER (sakin_id, daire_id, isim, telefon, plaka)  
VALUES ('SAK00007', 7, 'Pierce Hawthorne', '555-7777',  NULL) ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34ABC123', 'PARK001', 'SAK00001') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34DEF456', 'PARK002', 'SAK00002') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34GHI789', 'PARK003', 'SAK00003') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34JKL012', 'PARK004', 'SAK00004') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34MNO345', 'PARK005', 'SAK00005') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34PQR678', 'PARK006', 'SAK00006') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34STU901', 'PARK007', 'SAK00007') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34VWX234', 'PARK008', 'SAK00008') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34YZA567', 'PARK009', 'SAK00009') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34BCD890', 'PARK010', 'SAK00010') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34EFG123', 'PARK011', 'SAK00011') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34HIJ456', 'PARK012', 'SAK00012') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34KLM789', 'PARK013', 'SAK00013') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34NOP012', 'PARK014', 'SAK00014') ;

INSERT INTO ARAC (plaka, park_no, sakin_id)  
VALUES ('34QRS345', 'PARK015', 'SAK00015') ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (1, 'Jerry', '555-1111611', 1) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (2, 'Tom', '555-2228222', 2) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (3, 'Leslie', '555-3373333', 3) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (4, 'April', '555-4444144', 4) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (5, 'Ron', '555-5555155', 5) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (6, 'Andy', '555-6661666', 1) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (7, 'Donna', '555-7177777', 3) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (8, 'Chris', '555-8888188', 2) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (9, 'Ben', '555-9919999', 4) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (10, 'Ann', '555-0010000', 5) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (11, 'Martin', '555-2010101', 3) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (12, 'Abe', '555-1020202', 1) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (13, 'Miriam', '555-1030303', 2) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (14, 'Rose', '555-1040404', 4) ;

INSERT INTO PERSONEL (personel_id, isim, telefon, gorev_id)  
VALUES (15, 'Steve', '555-1050505', 5) ;

select * 
from PERSONEL;

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (1, 1);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (2, 1);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (3, 1);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (4, 1);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (5, 1);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (6, 2);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (7, 2);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (8, 2);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (9, 2);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (10, 2);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (11, 3);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (12, 3);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (13, 3);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (14, 3);

INSERT INTO BINA_PERSONEL (personel_id, blok_no) 
VALUES (15, 3);

UPDATE DAIRELER SET sahip_id ='SAH00001'  WHERE daire_id =1 ;

UPDATE DAIRELER SET sahip_id ='SAH00002'  WHERE daire_id =2 ;

UPDATE DAIRELER SET sahip_id ='SAH00003'  WHERE daire_id =3 ;

UPDATE DAIRELER SET sahip_id ='SAH00004'  WHERE daire_id =4 ;

UPDATE DAIRELER SET sahip_id ='SAH00005'  WHERE daire_id =5 ;

UPDATE DAIRELER SET sahip_id ='SAH00006'  WHERE daire_id =6 ;

UPDATE DAIRELER SET sahip_id ='SAH00007'  WHERE daire_id =7 ;

UPDATE DAIRELER SET sahip_id ='SAH00008'  WHERE daire_id =8 ;

UPDATE DAIRELER SET sahip_id ='SAH00009'  WHERE daire_id =9 ;

UPDATE DAIRELER SET sahip_id ='SAH00010'  WHERE daire_id =10;

UPDATE DAIRELER SET sahip_id ='SAH00011'  WHERE daire_id =11;

UPDATE DAIRELER SET sahip_id ='SAH00012'  WHERE daire_id =12;

UPDATE DAIRELER SET sahip_id ='SAH00013'  WHERE daire_id =14;

select * FROM DAIRELER;

UPDATE DAIRELER SET sahip_id ='SAH00013'  WHERE daire_id =13;

UPDATE DAIRELER SET sahip_id ='SAH00015'  WHERE daire_id =15;

SELECT * FROM DAIRELER;

UPDATE DAIRELER SET sahip_id ='SAH00014'  WHERE daire_id =14;

SELECT * FROM DAIRELER;

UPDATE SAKINLER SET PLAKA='34QRS345'  WHERE daire_id =15;

UPDATE SAKINLER SET PLAKA='34NOP012'  WHERE daire_id =14;

UPDATE SAKINLER SET PLAKA='34KLM789'  WHERE daire_id =13;

UPDATE SAKINLER SET PLAKA='34HIJ456'  WHERE daire_id =12;

UPDATE SAKINLER SET PLAKA='34EFG123'  WHERE daire_id =11;

UPDATE SAKINLER SET PLAKA='34BCD890'  WHERE daire_id =10;

UPDATE SAKINLER SET PLAKA='34YZA567'  WHERE daire_id =9;

UPDATE SAKINLER SET PLAKA='34VWX234'  WHERE daire_id =8;

UPDATE SAKINLER SET PLAKA='34STU901'  WHERE daire_id =7;

UPDATE SAKINLER SET PLAKA='34PQR678'  WHERE daire_id =6;

UPDATE SAKINLER SET PLAKA='34MNO345'  WHERE daire_id =5;

UPDATE SAKINLER SET PLAKA='34JKL012'  WHERE daire_id =4;

UPDATE SAKINLER SET PLAKA='34GHI789'  WHERE daire_id =3;

UPDATE SAKINLER SET PLAKA='34DEF456'  WHERE daire_id =2;

UPDATE SAKINLER SET PLAKA='34ABC123'  WHERE daire_id =1;

SELECT * FROM SAKINLER;

SELECT * FROM DAIRELER;

SELECT * FROM BINA;

SELECT * FROM BINA_PERSONEL;

SELECT * FROM PERSONEL;

SELECT * FROM SAKINLER;

SELECT * FROM ARAC;

SELECT * FROM DAIRE_SAHIPLERI ;

SELECT * FROM GOREV ;

SELECT DISTINCT d.isim, d.telefon 
FROM DAIRE_SAHIPLERI d 
JOIN DAIRELER dl ON d.sahip_id = dl.sahip_id 
JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
JOIN PERSONEL p ON bp.personel_id = p.personel_id;

SELECT DISTINCT p.isim, p.telefon 
FROM DAIRELER dl 
JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
JOIN PERSONEL p ON bp.personel_id = p.personel_id 
WHERE dl.blok_no = 3;

SELECT DISTINCT p.isim, p.telefon 
FROM DAIRELER dl 
JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
JOIN PERSONEL p ON bp.personel_id = p.personel_id 
WHERE dl.blok_no = 1;

SELECT DISTINCT p.isim AS personel_isim, p.telefon AS personel_telefon, d.isim AS sahip_isim, d.telefon AS sahip_telefon 
FROM DAIRELER dl 
JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
JOIN PERSONEL p ON bp.personel_id = p.personel_id 
JOIN DAIRE_SAHIPLERI d ON dl.sahip_id = d.sahip_id 
WHERE dl.blok_no = 3;

SELECT DISTINCT p.isim AS personel_isim, p.telefon AS personel_telefon, d.isim AS sahip_isim, d.telefon AS sahip_telefon 
FROM DAIRELER dl 
JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
JOIN PERSONEL p ON bp.personel_id = p.personel_id 
JOIN DAIRE_SAHIPLERI d ON dl.sahip_id = d.sahip_id 
;

SELECT DISTINCT p.isim AS personel_isim, p.telefon AS personel_telefon, d.isim AS sahip_isim, d.telefon AS sahip_telefon 
FROM DAIRELER dl 
JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
JOIN PERSONEL p ON bp.personel_id = p.personel_id 
JOIN DAIRE_SAHIPLERI d ON dl.sahip_id = d.sahip_id 
WHERE dl.blok_no = 3;

SELECT DISTINCT 
  CONCAT('Personel İsim: ', p.isim) AS personel_isim, 
  CONCAT('Personel Telefon: ', p.telefon) AS personel_telefon, 
  CONCAT('Sahip İsim: ', d.isim) AS sahip_isim, 
  CONCAT('Sahip Telefon: ', d.telefon) AS sahip_telefon 
FROM 
  DAIRELER dl 
  JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
  JOIN PERSONEL p ON bp.personel_id = p.personel_id 
  JOIN DAIRE_SAHIPLERI d ON dl.sahip_id = d.sahip_id 
WHERE 
  dl.blok_no = 3;

SELECT 
  CONCAT('Personel İsim: ', p.isim) AS personel_isim, 
  CONCAT('Personel Telefon: ', p.telefon) AS personel_telefon, 
  CONCAT('Sahip İsim: ', d.isim) AS sahip_isim, 
  CONCAT('Sahip Telefon: ', d.telefon) AS sahip_telefon 
FROM 
  DAIRELER dl 
  JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
  JOIN PERSONEL p ON bp.personel_id = p.personel_id 
  JOIN DAIRE_SAHIPLERI d ON dl.sahip_id = d.sahip_id 
WHERE 
  dl.blok_no = 3 
;

SELECT 
  CONCAT('Personel İsim: ', p.isim) AS personel_isim, 
  CONCAT('Personel Telefon: ', p.telefon) AS personel_telefon, 
  CONCAT('Sahip İsim: ', d.isim) AS sahip_isim, 
  CONCAT('Sahip Telefon: ', d.telefon) AS sahip_telefon 
FROM 
  DAIRELER dl 
  JOIN BINA_PERSONEL bp ON dl.blok_no = bp.blok_no 
  JOIN PERSONEL p ON bp.personel_id = p.personel_id 
  JOIN DAIRE_SAHIPLERI d ON dl.sahip_id = d.sahip_id 
WHERE 
  dl.blok_no = 3;

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id 
WHERE d.daire_no = 3 AND blok_no= 1;

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id 
WHERE d.daire_no = 1 AND blok_no= 1;

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id 
WHERE d.daire_no = 1 AND blok_no= 1;

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id 
WHERE d.daire_no = 101;

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id 
WHERE d.daire_no = 101 AND d.blok_no = 1;

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN ARAC a ON s.sakin_id = a.sakin_id 
WHERE a.plaka = '34ABC123';

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN ARAC a ON s.sakin_id = a.sakin_id 
WHERE a.plaka = '34MNO345';

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN ARAC a ON s.sakin_id = a.sakin_id 
WHERE a.park_no = 'PARK001';

SELECT s.isim, s.telefon 
FROM SAKINLER s 
JOIN ARAC a ON s.sakin_id = a.sakin_id 
WHERE a.park_no = 'PARK002';

SELECT s.isim, s.telefon, (d.daire_m2 / SUM(d.daire_m2) OVER ()) * 80000 AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 80000) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 80000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 80000, 3) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 80000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 8000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 20000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 20000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 20000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 10000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 2000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 20000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.daire_m2 / SUM(d.daire_m2) OVER ()) * 20000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, (d.yasayan_kisi_sayisi / SUM(d.yasayan_kisi_sayisi) OVER ()) * 100 AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.yasayan_kisi_sayisi / SUM(d.yasayan_kisi_sayisi) OVER ()) * 100, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

SELECT s.isim, s.telefon, ROUND((d.yasayan_kisi_sayisi / SUM(d.yasayan_kisi_sayisi) OVER ()) * 1000, 2) AS pay 
FROM SAKINLER s 
JOIN DAIRELER d ON s.daire_id = d.daire_id;

