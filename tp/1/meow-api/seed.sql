DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20),
  favorite_insult VARCHAR(100),
  password VARCHAR(50)
);

INSERT INTO users (name, favorite_insult, password) VALUES ("xXpoupouDestructorXx","insulte","motD3p4sseS3cure");
INSERT INTO users (name, favorite_insult, password) VALUES ("snoupie","insulte","123321");
INSERT INTO users (name, favorite_insult, password) VALUES ("pecresse","insulte","5millionsdeuros");
INSERT INTO users (name, favorite_insult, password) VALUES ("franklin","insulte","coucou");
INSERT INTO users (name, favorite_insult, password) VALUES ("toto","insulte","tutu");

