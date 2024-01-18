-- Stored procedure AddBonus
DELIMITER //

CREATE PROCEDURE AddBonus(IN user_id_param INT, IN project_name_param VARCHAR(255), IN score_param INT)
BEGIN
    DECLARE project_id_val INT;

    -- Check if the project exists
    SELECT id INTO project_id_val FROM projects WHERE name = project_name_param;
    
    -- If the project does not exist, create it
    IF project_id_val IS NULL THEN
        INSERT INTO projects (name) VALUES (project_name_param);
        SET project_id_val = LAST_INSERT_ID();
    END IF;

    -- Add the bonus correction
    INSERT INTO corrections (user_id, project_id, score) VALUES (user_id_param, project_id_val, score_param);
END;

//

DELIMITER ;
