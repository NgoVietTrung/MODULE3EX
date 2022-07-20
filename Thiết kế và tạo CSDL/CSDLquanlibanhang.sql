create database quanlibanhang;
use quanlibanhang;
create table Customer(
cID int not null auto_increment primary key,
cName varchar(50) not null,
cAge int not null
);
create table orderr(
oID int not null auto_increment primary key,
cID int not null,
oDate Date,
oTotalPrice double not null,
foreign key(cID) references Customer(cID)
);
create table product(
pID int not null auto_increment primary key,
pName varchar(50) not null,
pPrice double not null
);
create table Orderdetail(
oID int not null,
pID int not null,
odQTY tinytext,
foreign key(oID) references orderr(oID), 
foreign key(pID) references product(pID), 
primary key(oID,pID)
);