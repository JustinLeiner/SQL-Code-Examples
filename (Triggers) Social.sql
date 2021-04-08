/* Delete the tables if they already exist */
DROP DATABASE IF EXISTS social_network;
CREATE DATABASE social_network;
USE social_network;

drop table if exists Highschooler;
drop table if exists Friend;
drop table if exists Likes;

/* Create the schema for our tables */
create table Highschooler(ID int, name text, grade int);
create table Friend(ID1 int, ID2 int);
create table Likes(ID1 int, ID2 int);

/* Populate the tables with our data */
insert into Highschooler values (1510, 'Jordan', 9);
insert into Highschooler values (1689, 'Gabriel', 9);
insert into Highschooler values (1381, 'Tiffany', 9);
insert into Highschooler values (1709, 'Cassandra', 9);
insert into Highschooler values (1101, 'Haley', 10);
insert into Highschooler values (1782, 'Andrew', 10);
insert into Highschooler values (1468, 'Kris', 10);
insert into Highschooler values (1641, 'Brittany', 10);
insert into Highschooler values (1247, 'Alexis', 11);
insert into Highschooler values (1316, 'Austin', 11);
insert into Highschooler values (1911, 'Gabriel', 11);
insert into Highschooler values (1501, 'Jessica', 11);
insert into Highschooler values (1304, 'Jordan', 12);
insert into Highschooler values (1025, 'John', 12);
insert into Highschooler values (1934, 'Kyle', 12);
insert into Highschooler values (1661, 'Logan', 12);

insert into Friend values (1510, 1381);
insert into Friend values (1510, 1689);
insert into Friend values (1689, 1709);
insert into Friend values (1381, 1247);
insert into Friend values (1709, 1247);
insert into Friend values (1689, 1782);
insert into Friend values (1782, 1468);
insert into Friend values (1782, 1316);
insert into Friend values (1782, 1304);
insert into Friend values (1468, 1101);
insert into Friend values (1468, 1641);
insert into Friend values (1101, 1641);
insert into Friend values (1247, 1911);
insert into Friend values (1247, 1501);
insert into Friend values (1911, 1501);
insert into Friend values (1501, 1934);
insert into Friend values (1316, 1934);
insert into Friend values (1934, 1304);
insert into Friend values (1304, 1661);
insert into Friend values (1661, 1025);
insert into Friend select ID2, ID1 from Friend;

insert into Likes values(1689, 1709);
insert into Likes values(1709, 1689);
insert into Likes values(1782, 1709);
insert into Likes values(1911, 1247);
insert into Likes values(1247, 1468);
insert into Likes values(1641, 1468);
insert into Likes values(1316, 1304);
insert into Likes values(1501, 1934);
insert into Likes values(1934, 1501);
insert into Likes values(1025, 1101);

-- Trigger 1
Delimiter //

create trigger friendly_trigger
after insert on Highschooler
for each row
begin 
	if new.name = "Friendly" then
    insert into Likes
    select new.ID, Highschooler.ID from
    Highschooler where Highschooler.grade = New.grade;
End if;
End //



-- 2
DELIMITER // 
create procedure insert_friend(in id1 INT, in id2 INT) 
begin
insert into friend VALUES (id1, id2); 
end; 
// call insert_friend (1934, 1661); 
drop procedure insert_friend;

-- 3
Delimiter //
CREATE TRIGGER auto_inc_highschooler 
BEFORE INSERT ON Highschooler
for each row
begin
	if New.ID is NULL then
	SET @max_id = (SELECT max(ID) from Highschooler);
	set new.ID = @max_id + 1;
	end if;
end //



-- 4a
CREATE VIEW full_friend AS
SELECT DISTINCT hs1.name AS name1, hs1.grade AS grade1, hs2.grade AS grade2, hs2.name AS name2
FROM Highschooler hs1
INNER JOIN Friend f1 ON f1.id1 = hs1.id, 
Highschooler hs2
INNER JOIN Friend f2 ON f2.id2 = hs2.id
WHERE f1.id1 != f2.id2
GROUP BY name2;

-- 4b
SELECT name1, name2
FROM full_friend
WHERE grade1 != grade2;

  
