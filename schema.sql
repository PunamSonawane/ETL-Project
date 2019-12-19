-- Create Tables

CREATE TABLE Toronto (
  New_id INT PRIMARY KEY,
  Link varchar(70),
  Title varchar(70),
  Price float,
  Location varchar(10),
  Date date
  );

CREATE TABLE ThunderBay (
  New_id INT PRIMARY KEY,
  Link varchar(100),
  Title varchar(100),
  Price float,
  Location varchar(10),
  Date date
  
);

CREATE TABLE weatherData (
  New_ID INT PRIMARY KEY,
  location varchar(10),
  temp float,
  Hummidity INT,
  Cloudiness INT,
  Wind_Speed float,
  weathercondition varchar
  );

