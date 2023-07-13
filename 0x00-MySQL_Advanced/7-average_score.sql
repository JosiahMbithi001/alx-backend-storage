-- This SQL Script Calculates and stores average Bonus

DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE total_score  FLOAT;
    DECLARE total_count INT;
    DECLARE average_score FLOAT;

    -- Compute Total Score
    SELECT SUM(score) INTO total_score FROM corrections WHERE user_id = user_id;

    -- Compute total Count
    SELECT COUNT(*) INTO total_count FROM corrections WHERE user_id = user_id;

    -- Compute Average Score
    SET average_score = IF(total_count > 0, total_score /  total_count, 0);

    -- Update Average Score in users table
    UPDATE  users SET average_score = average_score WHERE id = user_id;
    
END $$

DELIMITER ;
