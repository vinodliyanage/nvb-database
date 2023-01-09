DROP PROCEDURE IF EXISTS create_user;

DELIMITER $$
CREATE PROCEDURE create_user(
	firstName VARCHAR(50),
    lastName VARCHAR(50),
    age TINYINT,
	email VARCHAR(255),
	password VARCHAR(255)
)
BEGIN

	INSERT INTO auth(email, password) 
    VALUES(email, password);
    
    SET @uid = (
		SELECT a.uid
		FROM auth a
		WHERE a.email = email
	);
  
	INSERT INTO users(uid, firstName, lastName, age)
	VALUES(@uid, firstName, lastName, age);
		
END$$
DELIMITER ;