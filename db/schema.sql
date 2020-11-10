
CREATE TABLE users (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50),
    enabled BOOLEAN
);

CREATE TABLE authorities (
    username VARCHAR(50),
    authority VARCHAR(50),
    FOREIGN KEY (username) REFERENCES users(username),
    UNIQUE (username, authority)
);

-- USERS ------------------------------------------------------------
INSERT INTO users(username, password, enabled) VALUES('admin', '{noop}admin', true);
INSERT INTO users(username, password, enabled) VALUES('user', '{noop}user', true);
INSERT INTO users(username, password, enabled) VALUES('john', '{noop}1234', true);
INSERT INTO users(username, password, enabled) VALUES('julia', '{noop}1234', true);

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
