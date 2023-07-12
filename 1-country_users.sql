-- This Table Creates Table users and adds an enumaration 


CREATE TABLE IF NOT EXISTS users (
    -- This a unique identifier for each user 
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

    -- Email for a user
    email VARCHAR(255) NOT NULL UNIQUE,

    -- A Users name
    name VARCHAR(255),
    
    -- A Persons Country
    country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US'
);

