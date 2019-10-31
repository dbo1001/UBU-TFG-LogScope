CREATE TABLE Enviroment (
	"server" VARCHAR(40) PRIMARY KEY,
	ip_address VARCHAR(17)
);

CREATE TABLE APP (
	id INTEGER PRIMARY KEY,
	"name" VARCHAR(50),
	"description" VARCHAR(100),
	"server" VARCHAR(40) FOREIGN KEY REFERENCES Enviroment
);

CREATE TABLE EventType (
	"type" VARCHAR(30) PRIMARY KEY,
	"description" VARCHAR(70)
);

CREATE TABLE "User" (
	id INTEGER PRIMARY KEY,
	name VARCHAR(50),
	login VARCHAR(20)
	--...
);

CREATE TABLE ItemType (
	"type" VARCHAR(30) PRIMARY KEY,
	model VARCHAR(50)
);

CREATE TABLE Item (
	id INTEGER PRIMARY KEY,
	"user_id" INTEGER FOREIGN KEY REFERENCES "User",
	item_type VARCHAR(30) FOREIGN KEY REFERENCES ItemType,
	ip_address VARCHAR(17),
	mac_address VARCHAR(12)
);

CREATE TABLE "Event" (
	id INTEGER PRIMARY KEY,
	instant DATETIME,
	event_type VARCHAR(30) FOREIGN KEY REFERENCES EventType,
	"user_id" INTEGER FOREIGN KEY REFERENCES "User",
	item_id INTEGER FOREIGN KEY REFERENCES Item,
);

CREATE TABLE "Session" (
	id INTEGER PRIMARY KEY,
	event_id INTEGER FOREIGN KEY REFERENCES "Event",
	app_id INTEGER FOREIGN KEY REFERENCES APP,
	start_time DATETIME NOT NULL,
	end_time DATETIME
);