DROP TABLE cities;
DROP TABLE countries;


CREATE TABLE cities (
 id SERIAL8 PRIMARY KEY,
 name VARCHAR(255),
 if_visited BOOLEAN,
 country_id INT8 REFERENCES countries(id)
);

CREATE TABLE countries (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  continent VARCHAR(255)
);
