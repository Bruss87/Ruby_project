DROP TABLE cities;



CREATE TABLE cities (
 id SERIAL8 PRIMARY KEY
 name VARCHAR(255),
 if_visited BOOLEAN,
 country_id INT8 REFERENCES country(id),
);
