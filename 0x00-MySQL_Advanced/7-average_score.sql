-- This SQL Script Calculates and stores average Bonus

DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE average_score FLOAT;

    -- Compute Average Score
    SET average_score = (SELECT AVG(score) FROM corrections AS D WHERE D.user_id=user_id);

    -- Update Average Score in users table
    UPDATE  users SET average_score = average_score WHERE id=user_id;
    
END $$

DELIMITER ;
