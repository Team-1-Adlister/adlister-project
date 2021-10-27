USE adlister_db;
Drop TABLE if EXISTS ads_categories;
DROP TABLE if exists categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       username VARCHAR(240) NOT NULL,
                       email VARCHAR(240) NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE ads (
                     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                     user_id INT UNSIGNED NOT NULL,
                     title VARCHAR(240) NOT NULL,
                     description TEXT NOT NULL,
                     PRIMARY KEY (id),
                     FOREIGN KEY (user_id) REFERENCES users(id)
);

USE adlister_db;

insert into users (id, username, email, password) values (123, 'testaccount', 'bill@email.com', 'password');

insert into ads (id, user_id, title, description) values (1, 123, 'Stuff', 'Cool Stuff for Sale');

