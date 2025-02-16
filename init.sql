USE testdb;

CREATE TABLE IF NOT EXISTS sample_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL
);

INSERT INTO sample_data (name, value) VALUES ('Item 1', 'Value 1');
INSERT INTO sample_data (name, value) VALUES ('Item 2', 'Value 2');
INSERT INTO sample_data (name, value) VALUES ('Item 3', 'Value 3');
