DROP TABLE cities;


City.delete_all()


CREATE TABLE cities (
 id SERIAL8 PRIMARY KEY
 name VARCHAR(255),
 if_visited BOOLEAN,
 country_id INT8 REFERENCES country(id),
);





binding.pry
nil
