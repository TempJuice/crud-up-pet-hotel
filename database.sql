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
    owners_id integer REFERENCES owners
 );
 
 CREATE TABLE visits (
    id serial primary key,
    check_in_date varchar(20) NOT NULL,
    check_out_date varchar(20) NOT NULL,
    pets_id integer REFERENCES pets
 );
 