CREATE TABLE task(
    id INT NOT NULL AUTO_INCREMENT,
    priority INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    PRIMARY KEY (id)    
);