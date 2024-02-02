use alfa3;

create table Person(
	id_p int identity(1,1) primary key,
	firstname varchar(15) not null,
	surname varchar(15) not null,
	birth datetime not null,
	education_id int not null,
	residence_id int not null,
);

create table Home(
	residence_id int identity(1,1) primary key,
	home_address varchar(25) not null,
	residence_type int not null
);

create table Education(
	education_id int identity(1,1) primary key,
	e_type enum('elementary School','high School','College') not null,
);

create table Residence_type(
	r_type_id int identity(1,1) primary key,
	r_type ENUM('apartment','house','bungalow',) not null,
);
create table Family_relations(
	relations_id int identity(1,1) primary key,
	parent int,
	child int,
	sibling int,
);