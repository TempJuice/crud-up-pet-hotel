--- added database ---
 CREATE TABLE owners (
    id serial primary key,
    first_name varchar(20) NOT NULL,
    last_name varchar(20) NOT NULL
 );
 
 CREATE TABLE pets (
    id serial primary key,
    name varchar(20) NOT NULL,
    breed varchar(20) NOT NULL,
    color varchar(20) NOT NULL,
    walks BOOLEAN,
    owners_id integer REFERENCES owners
 );
 
 CREATE TABLE visits (
    id serial primary key,
    check_in_date varchar(20) NOT NULL,
    check_out_date varchar(20) NOT NULL,
    pets_id integer REFERENCES pets
 );
 
 
 INSERT INTO owners (first_name,last_name)
 VALUES ('alex', 'jung');
 
 INSERT INTO pets (name, breed, color, walks, owners_id)
 VALUES ('Great Uncle Jung', 'swissiatrist', 'white', true, 1);
 
 INSERT INTO visits (check_in_date, check_out_date, pets_id)
 VALUES ('08-18-2017', '08-20-2017', 1);
 