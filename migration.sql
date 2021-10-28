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

TRUNCATE ADS;

insert into ads (id, user_id, title, description) values (1, 123, 'Xbox 360', 'Heavily used and makes odd sounds but is fully working.  No games included.  $400');
insert into ads (id, user_id, title, description) values (2, 123, '1989 Mazda RX7', 'Runs like new!  Quick!  Twin Turbo, new tires, head turner! $5500 OBO');
insert into ads (id, user_id, title, description) values (3, 123, 'Comic Book Collection', '500+ comic books for sale, Superman, Batman, Spider-man, Marvel and DC assortment. $200');
insert into ads (id, user_id, title, description) values (4, 123, 'Web Developer Needed', 'Must be willing to work long hours for low wages.  Payment negotiable');
insert into ads (id, user_id, title, description) values (5, 123, 'Haunted Vacuum Cleaner', 'Turns on and vacuums by itself at all hours of the night.  FREE!!!');
insert into ads (id, user_id, title, description) values (6, 123, 'Playstation 4', 'Brand new in the box.  Serious offers only!  $600');

