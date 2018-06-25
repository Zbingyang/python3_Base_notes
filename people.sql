drop database if exists people;
create database people;
use people;
create table  person(
perid int not null,
pername varchar(100) not null,
perage int not null,
perbirth date,
pertel varchar(100),
primary key(perid)
);