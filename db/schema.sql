DROP DATABASE IF EXISTS toast_db;
CREATE DATABASE toast_db;

USE toast_DB;
CREATE TABLE eventDetails
(	event_id int NOT NULL AUTO_INCREMENT,
	groom_name varchar(50) NOT NULL,
    bride_name varchar(50) NOT NULL,
    venue_name varchar(50) NOT NULL,
    venue_address varchar(80) NOT NULL,
    event_date varchar(50) NOT NULL,
	PRIMARY KEY (event_id)
);

CREATE TABLE guestList
(	guest_id int NOT NULL AUTO_INCREMENT,
    guest_name varchar(50) NOT NULL,
    guest_email varchar(50) NOT NULL,
    rsvp_status varchar(50) DEFAULT "Awaiting response" NOT NULL,
    plus_one BOOLEAN DEFAULT false NOT NULL,
    date_sent TIMESTAMP(0) NOT NULL,
    event_id int NOT NULL,
	PRIMARY KEY (guest_id),
    FOREIGN KEY (event_id)
    REFERENCES eventDetails(event_id)
    ON DELETE CASCADE
);