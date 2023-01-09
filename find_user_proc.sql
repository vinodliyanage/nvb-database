DROP PROCEDURE IF EXISTS find_user;

DELIMITER $$
CREATE PROCEDURE find_user (
	email VARCHAR(255)
)
BEGIN
	SELECT uid, email, password
	FROM auth a
	WHERE a.email = email;
END$$
DELIMITER ;