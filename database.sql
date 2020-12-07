CREATE TABLE IF NOT EXISTS Performer(
	id serial primary key,
	name varchar(35) NOT NULL UNIQUE,
);

cCREATE TABLE IF NOT EXISTS Album(
	id serial primary key,
	year numeric(4,0) NOT NULL,
	name varchar(100) NOT NULL,
	Performerid integer REFERENCES Performer(id) NOT NULL
);

CREATE TABLE IF NOT EXISTS Track(
	id serial primary key,
	year numeric(4,0) NOT NULL,
	name varchar(100) NOT NULL,
	albumid integer REFERENCES Album(id)
);