CREATE TABLE IF NOT exists books (
    book_id INTEGER UNSIGNED  AUTO_INCREMENT,
    author INTEGER UNSIGNED  ,
    title VARCHAR(100) NOT NULL,
    ANO INTEGER UNSIGNED NOT NULL DEFAULT 1900,
    lenguage VARCHAR(2) NOT NULL default 'ES' comment 'ISO 639 -1',
    cover_url VARCHAR(500),
    price DOUBLE(6,2) NOT NULL DEFAULT 10,
    sellable TINYINT(1) DEFAULT 1,
    copies INTEGER NOT NULL,
    description TEXT ,
    PRIMARY KEY (book_id)
);

CREATE TABLE IF NOT exists author (
    author_id INTEGER UNSIGNED PRIMARY key AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    nationalitu VARCHAR(3) 
    
);
CREATE TABLE IF NOT exists  clients (
    client_id INTEGER UNSIGNED PRIMARY key AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    email VARCHAR(3) not null unique,
    birthdate DATETIME ,
    active tinyint(1) NOT NULL DEFAULT 1,
    gender ENUM('M','F','ND') NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
	update_at TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE CURRENT_TIMESTAMP
    
);