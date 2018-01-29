CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR (255) NOT NULL,

  UNIQUE (username)

)ENGINE = InnoDB;

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,

  UNIQUE (name)
)ENGINE  = InnoDB;

CREATE TABLE users_roles(
  user_id INT NOT NULL ,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (role_id) REFERENCES roles(id),

  UNIQUE (user_id,role_id)
)ENGINE = InnoDb;

-- Insert

INSERT INTO users VALUES (1,'admin','1234567890');
INSERT INTO roles VALUES (1,'ROLE_ADMIN');
INSERT INTO roles VALUES (2,'ROLE_USER');

INSERT INTO users_roles VALUES (1,1);


