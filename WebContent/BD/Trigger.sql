DROP TRIGGER IF EXISTS check_ins_preciohora;
DELIMITER $$
CREATE TRIGGER check_ins_preciohora BEFORE INSERT ON preciohora FOR EACH ROW 
BEGIN
	if new.diaSemana not IN ('L','M','X','J','V','S','D') THEN
    	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error dia semana';
	END IF;
	if new.precio < 0.0 then
		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error precio mayor a 0';
	end if;
	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_preciohora;
DELIMITER $$
CREATE TRIGGER check_upd_preciohora BEFORE UPDATE ON preciohora FOR EACH ROW 
BEGIN
	if new.diaSemana not IN ('L','M','X','J','V','S','D') THEN
    	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error dia semana';
	END IF;
	if new.precio < 0.0 then
		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error precio mayor a 0';
	end if;
	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado';
	end if;
END;
