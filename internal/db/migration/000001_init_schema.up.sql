CREATE TABLE carriers (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    service VARCHAR(50) NOT NULL,
    deadline INT NOT NULL,
    price DECIMAL(7, 2) NOT NULL
);
