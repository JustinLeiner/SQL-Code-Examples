create database NHL;
use NHL;

drop table team;

create table team (
team_name varchar(20) not null,
city varchar(20) not null,
captain_name varchar(20),
coach varchar(20) not null,
primary key(team_name)
);

create table player (
skill_level int(2) not null,
position varchar(20) not null,
name varchar(20) not null,
team_name varchar(20) not null,
primary key(name)
);

create table game (
host_team varchar(20) not null,
guest_team varchar(20) not null,
score char(5),
game_date date,
primary key(host_team, guest_team)
);

create table injury_record (
id int(4) not null,
name varchar(20) not null,
description varchar(200),
primary key(name, id)
);

alter table team
add foreign key(captain_name) references player(name);

alter table player
add foreign key player(team_name) references team(team_name); 

alter table game
add foreign key game(host_team) references team(team_name);
alter table game
add foreign key game(guest_team) references team(team_name);

alter table injury_record
add foreign key(name) references player(name);

-- Team data
insert into team(team_name, city, captain_name, coach)
value('New York Rangers', 'New York', null, 'David Quinn');
update team
set captain_name = 'Chris Kreider'
where team_name = 'New York Rangers';

insert into team(team_name, city, captain_name, coach)
value('Arizona Coyotes', 'Glendale', null, 'Rick Tocchet');
update team
set captain_name = 'Oliver Ekman-Larsson'
where team_name = 'Arizona Coyotes';

-- Player data
insert into player(skill_level, position, name, team_name)
value(95, 'Right Defense', 'Chris Kreider', 'New York Rangers');
insert into player(skill_level, position, name, team_name)
value(96, 'Left Defense', 'Oliver Ekman-Larsson', 'Arizona Coyotes');
insert into player(skill_level, position, name, team_name)
value(90, 'Goalie', 'Tony DeAngelo', 'New York Rangers');
insert into player(skill_level, position, name, team_name)
value(93, 'Center', 'Lawson Crouse', 'Arizona Coyotes');

-- Games data
insert into game(host_team, guest_team, game_date, score)
value('New York Rangers', 'Arizona Coyotes','2019-03-04', '4-2');
insert into game(host_team, guest_team, game_date, score)
value('Arizona Coyotes', 'New York Rangers','2020-10-22', '3-4');

-- Injury
insert into injury_record(id, name, description)
value(1 ,'Tony DeAngelo', 'Pulled hamstring on 10/22/2020. Cannot play for two weeks');

