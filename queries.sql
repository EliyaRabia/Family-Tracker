

-- SETUP --
DROP TABLE IF EXISTS countries;
  
  create table countries (
  id serial primary key,
  country_code char(2),
  country_name varchar(100)
  );

--   Now right-click on the countries table and import the countries file above (make sure that the headers section is on).


DROP TABLE IF EXISTS visited_countries, users;

CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) NOT NULL,
user_id INTEGER REFERENCES users(id)
);

