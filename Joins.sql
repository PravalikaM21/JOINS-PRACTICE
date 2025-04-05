---CREATE DATABASE----
create database IMDB;

----CREATE TABLE-----
create table movie_info(Movie_ID int,Title varchar(20),Director varchar(20),Release_year int,Runtime_Min int,Language varchar(20),Country varchar(20),IMBD_Rating float,Box_Office int);

---READ THE DATA FROM MOVIE_INFO-----
select * from movie_info;

---ADD  NEW COLUMN TO THE EXISTING TABLE------
alter table movie_info
add  Genre varchar(20);

-----CHAGE THE TYPE OF THE DATA------
alter table movie_info
alter column Box_Office varchar(20);

---INSERT THE DATA INTO THE TABLE----
insert into movie_info values(1,'Baahubali','S.S Rajamouli',2015,159,'Telugu','India',8.0,2500000000,'Action'),
(2,'RRR','S.S Rajamouli',2022,182,'Telugu','India',7.8,1600000000,'Action'),
(3,'Kantara','RishabShetty',2022,150,'Kannada','India',8.3,9000000000,'Action'),
(4,'Avatar','James Cameron',2009,162,'English','USA',7.9,2923000000,'Sci-Fi'),
(5,'KGF Chapter1','Prashanth Neel',2018,155,'Kannada','India',8.2,2500000000,'Action'),
(6,'Vikram','Lokesh kanagaraj',2022,174,'Tamil','India',8.4,2500000000,'Action'),
(7,'Leo','Lokesh kanagaraj',2023,164,'Tamil','India',7.8,6000000000,'Action'),
(8,'Jailer','Nelson Dilipkumar',2023,168,'Tamil','India',7.8,6000000000,'Action'),
(9,'Drishyam','Jeethu Joseph',2013,160,'Malayalam','India',8.4,7500000000,'Thriller'),
(10,'Lucifer','Prithviraj Sukumaran',2019,174,'Malayalam','India',8.6,1500000000,'Action'),
(11,'Premalu','Girish',2024,140,'Malayalam','India',8.6,1500000000,'Romance'),
(12,'3Idoiots','Rajkumar Hirani',2009,170,'Hindi','India',8.6,2500000000,'Comedy'),
(13,'Dangal','Nitesh Tivari',2016,161,'Hindi','India',8.4,1500000000,'Sports'),
(14,'Gully Boy','Joya Akhtar',2019,153,'Hindi','India',8.0,4500000000,'Drama'),
(15,'Parasite','Bong JOonho',2019,132,'Korean','South Korea',7.6,2500000000,'Thriller'),
(16,'Train to Busan','yeon sangho',2015,159,'Korean','South korea',8.0,2500000000,'Horror'),
(17,'Squid game','Hwang Dong-hyuk',2023,180,'English','USA',8.0,2500000000,'Thriller'),
(18,'Oppenheimer','Christipher Nolan',2014,169,'English','USA',8.6,23000000,'Drama'),
(19,'Intersteller','Christipher Nolan',2008,152,'English','USA',8.6,7730000000,'Sci-Fi'),
(20,'The dark night','Christipher Nolan',2008,152,'English','USA',9.0,1005000000,'Action');


create table MovieCast(Movie_ID int,Actor varchar(20),Actress varchar(20),OTT varchar(20),Status varchar(20));

select * from MovieCast;

 insert into MovieCast values(1,'Prabhas','Anushka','Aha','Blockbuster'),
 (2,'NTR','Alia Bhatt','Aha','Hit'),
 (3,'Rishab Shetty','Sapthami Gowda','Netflix','Flop'),
 (4,'Yash','Srinidhi','ZEE','Blockbuster'),
 (5,'Kamal Hasan','Anushka','Hotstar','superhit'),
 (6,'Vijay','Trisha','ZEE','Average'),
 (7,'Rjinikanth','Ramya','Aha','Flop'),
 (8,'Mohanlal','Meena','Sunnext','Hit'),
 (9,'Mohanlal','Manju Warrior','Hotstar','Hit'),
 (10,'Naslen Gafoor','Meena','ZEE','Average');
 
 ---INNER JOIN---
SELECT * 
FROM movie_info m1 
INNER JOIN MovieCast m2 ON m1.Movie_ID = m2.Movie_ID;

 ---LEFT JOIN-----
SELECT * 
FROM movie_info m1 
LEFT JOIN MovieCast m2 ON m1.Movie_ID = m2.Movie_ID;

 -----RIGHT JOIN------
SELECT * 
FROM movie_info m2 
RIGHT JOIN MovieCast m1 ON m2.Movie_ID = m1.Movie_ID;
 
 ----OUTER JOIN-----
SELECT * 
FROM movie_info m1 
FULL OUTER JOIN MovieCast m2 ON m1.Movie_ID = m2.Movie_ID;

 -----CROSS JOIN------
SELECT m1.Movie_ID, m2.Movie_ID AS Cast_Movie_ID
FROM movie_info m1
CROSS JOIN MovieCast m2;


 select * from  movie_info, MovieCast;

 