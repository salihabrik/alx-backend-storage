-- Create a stored procedure ComputeAverageWeightedScoreForUsers
DELIMITER //

CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
    DECLARE user_id_param INT;

    -- Get all user IDs
    DECLARE user_cursor CURSOR FOR SELECT id FROM users;
    OPEN user_cursor;

    -- Iterate through each user and compute the average weighted score
    user_loop: LOOP
        FETCH user_cursor INTO user_id_param;
        IF user_id_param IS NULL THEN
            LEAVE user_loop;
        END IF;

        -- Call the ComputeAverageWeightedScoreForUser procedure for each user
        CALL ComputeAverageWeightedScoreForUser(user_id_param);
    END LOOP;

    CLOSE user_cursor;
END //

DELIMITER ;
