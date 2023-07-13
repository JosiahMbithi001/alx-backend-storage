-- This SQL Script adds a bonus to a user's score for a particular project

DELIMITER $$

CREATE PROCEDURE AddBonus (
    IN user_id INT,
    IN project_name VARCHAR(255),
    IN score INT
)
BEGIN
    DECLARE project_id INT;

    -- Check for  A new Project
    SELECT id INTO project_id FROM projects WHERE name = project_name;

    -- If Project doesn't exist , Create it
    IF project_id IS NULL THEN 
        INSERT INTO projects (name) VALUES (project_name);
        SET project_id = LAST_INSERT_ID();
    END IF;

    -- Insert the new correction
    INSERT INTO corrections (user_id, project_id, score) VALUES (user_id, project_id, score);
END $$

DELIMITER ;
