DROP TABLE IF EXISTS users;
CREATE TABLE users(id INTEGER NOT NULL,name VARCHAR(100) NOT NULL,teamname VARCHAR(100) DEFAULT NULL,salary INTEGER DEFAULT NULL,PRIMARY KEY (ID));