CREATE TABLE spotter_archive (
  spotter_archive_id serial,
  flightaware_id varchar(50) NOT NULL,
  ident varchar(255) DEFAULT NULL,
  registration varchar(20),
  airline_name varchar(255) NOT NULL,
  airline_icao varchar(20) NOT NULL,
  airline_country varchar(255) NOT NULL,
  airline_type varchar(255) NOT NULL,
  aircraft_icao varchar(20) NOT NULL,
  aircraft_shadow varchar(255),
  aircraft_name varchar(255) NOT NULL,
  aircraft_manufacturer varchar(255) NOT NULL,
  departure_airport_icao varchar(20) NOT NULL,
  departure_airport_name varchar(255) NOT NULL,
  departure_airport_city varchar(255) NOT NULL,
  departure_airport_country varchar(255) NOT NULL,
  departure_airport_time varchar(20),
  arrival_airport_icao varchar(20) NOT NULL,
  arrival_airport_name varchar(255) NOT NULL,
  arrival_airport_city varchar(255) NOT NULL,
  arrival_airport_country varchar(255) NOT NULL,
  arrival_airport_time varchar(20),
  route_stop varchar(255),
  date timestamp NOT NULL,
  latitude float NOT NULL,
  longitude float NOT NULL,
  waypoints text NOT NULL,
  altitude integer NOT NULL,
  heading integer NOT NULL,
  ground_speed integer NOT NULL,
  squawk integer,
  ModeS varchar(255),
  pilot_id varchar(255),
  pilot_name varchar(255),
  owner_name varchar(255),
  verticalrate integer,
  format_source varchar(255),
  source_name varchar(255) DEFAULT NULL,
  over_country varchar(5) DEFAULT NULL,
  ground integer NOT NULL DEFAULT '0',
  PRIMARY KEY (spotter_archive_id)
);
create index flightaware_id_idx ON spotter_archive USING btree(flightaware_id);