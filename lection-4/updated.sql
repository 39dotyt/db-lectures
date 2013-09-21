CREATE TABLE color (
  id  INTEGER PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE model (
  id INTEGER PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);


CREATE TABLE car (
  id INTEGER PRIMARY KEY,
  number TEXT UNIQUE NOT NULL,
  color_id INTEGER REFERENCES color (id) NOT NULL,
  model_id INTEGER REFERENCES model (id) NOT NULL
);