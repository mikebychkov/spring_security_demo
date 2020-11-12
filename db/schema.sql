
DROP TABLE IF EXISTS authorities;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(100),
    enabled BOOLEAN
);

CREATE TABLE authorities (
    username VARCHAR(50),
    authority VARCHAR(50),
    FOREIGN KEY (username) REFERENCES users(username),
    UNIQUE (username, authority)
);

-- USERS ------------------------------------------------------------
INSERT INTO users(username, password, enabled) VALUES('admin', '{bcrypt}$2a$10$9YpLvf0RpsT7skkwWAGmbe1l5PeOSlSHOM1D51JyPjGMvlOnYdkLG', true);
INSERT INTO users(username, password, enabled) VALUES('user', '{bcrypt}$2a$10$dS4Xt..CYsvp9n4tIlRTtOwwVGiUxqbTPwA.1Ly7AFPfOTc7XnWWK', true);
INSERT INTO users(username, password, enabled) VALUES('john', '{bcrypt}$2a$10$1QDd/5CEt3oCXMJsBLvWhOQgy4KeMahlyZ84nMp0JcFqvIYTd3By6', true);
INSERT INTO users(username, password, enabled) VALUES('julia', '{bcrypt}$2a$10$1QDd/5CEt3oCXMJsBLvWhOQgy4KeMahlyZ84nMp0JcFqvIYTd3By6', true);

-- ROLES ------------------------------------------------------------
-- admin
INSERT INTO authorities(username, authority) VALUES('admin', 'ROLE_ADMIN');
INSERT INTO authorities(username, authority) VALUES('admin', 'ROLE_EMPLOYEE');
-- user
INSERT INTO authorities(username, authority) VALUES('user', 'ROLE_EMPLOYEE');
-- john
INSERT INTO authorities(username, authority) VALUES('john', 'ROLE_EMPLOYEE');
INSERT INTO authorities(username, authority) VALUES('john', 'ROLE_MANAGER');
-- julia
INSERT INTO authorities(username, authority) VALUES('julia', 'ROLE_EMPLOYEE');
INSERT INTO authorities(username, authority) VALUES('julia', 'ROLE_MANAGER');
INSERT INTO authorities(username, authority) VALUES('julia', 'ROLE_ADMIN');

---------------------------------------------------------------------
