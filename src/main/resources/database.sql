-- table : users
CREATE TABLE user(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
)
ENGINE = InnoDB;

--TABLE : roles
CREATE TABLE roles(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
)
ENGINE = InnoDB;

--Table for mapping user and roles
CREATE TABLE user_roles(
    user_id INT NOT NULL,
    role_id INT NOT NULL,

    FOREIGN KEY (user_id) REFERENCE users (id),
    FOREIGN KEY (role_id) REFERENCE roles (id),

    UNIQUE (user_id, role_id)
)
ENGINE = InnoDB

--Insert data
INSERT INTO users VALUES (1,'proselyte','213dad23vV#43');

INSERT INTO roles VALUES (1,'ROLE_USER');
INSERT INTO roles VALUEs (2,'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1,2);