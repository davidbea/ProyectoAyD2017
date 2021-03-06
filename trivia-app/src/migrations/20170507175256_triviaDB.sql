CREATE TABLE IF NOT EXISTS users(
  id int(11) auto_increment PRIMARY KEY,
  username VARCHAR(128) NOT NULL,
  password VARCHAR(128) NOT NULL,
  permissions ENUM('YES','NO') DEFAULT 'NO',
  score int(11) NOT NULL DEFAULT 0,
  UNIQUE (username),	
  created_at DATETIME,
  updated_at DATETIME
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS questions(
  id int(11) auto_increment PRIMARY KEY,
  category 	ENUM('CIENCIAS','DEPORTES','ENTRETENIMIENTO','GEOGRAFIA','HISTORIA'),
  description VARCHAR(128) NOT NULL,
  option1  VARCHAR(50) NOT NULL,
  option2  VARCHAR(50) NOT NULL,
  option3  VARCHAR(50) NOT NULL,
  option4  VARCHAR(50) NOT NULL,
  created_at DATETIME,
  updated_at DATETIME
)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS games(
	id int(11) auto_increment PRIMARY KEY,
	user VARCHAR(128) NOT NULL,
	description VARCHAR(128) NOT NULL,
	created_at DATETIME,
  updated_at DATETIME
)ENGINE=InnoDB;
