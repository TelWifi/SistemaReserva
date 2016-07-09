DROP TRIGGER IF EXISTS check_ins_preciohora;
DELIMITER $$
CREATE TRIGGER check_ins_preciohora BEFORE INSERT ON preciohora FOR EACH ROW 
BEGIN
	if new.diaSemana not IN ('L','M','X','J','V','S','D') THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error dia semana';
	END IF;
	if new.horaInicio not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora inicio';
	end if;
    	if new.horaFin not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora fin';
	end if;
	if new.precio < 0.0 then
		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error precio mayor a 0';
	end if;
	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_preciohora;
DELIMITER $$
CREATE TRIGGER check_upd_preciohora BEFORE UPDATE ON preciohora FOR EACH ROW 
BEGIN
	if new.diaSemana not IN ('L','M','X','J','V','S','D') THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error dia semana';
	END IF;
	if new.horaInicio not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora inicio';
	end if;
    	if new.horaFin not BETWEEN '06:00:00' AND '24:00:00' THEN
    		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error hora fin';
	end if;
	if new.precio < 0.0 then
		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error precio mayor a 0';
	end if;
	if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_ins_usuario;
DELIMITER $$
CREATE TRIGGER check_ins_usuario BEFORE INSERT ON usuario FOR EACH ROW 
BEGIN
	if new.nombres not like '^([A-Z])' THEN
       		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error nombre - solo letras';
       	end if;
	if new.celular not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error celular - solo digitos';
	end if;
    	if new.DNI not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error DNI - solo digitos';
	end if;
	if new.tipo not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error tipo - solo digitos';
	end if;
    if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;

DROP TRIGGER IF EXISTS check_upd_usuario;
DELIMITER $$
CREATE TRIGGER check_upd_usuario BEFORE UPDATE ON usuario FOR EACH ROW 
BEGIN
	if new.nombres not like '^([A-Z])' THEN
       		SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error nombre - solo letras';
       	end if;
	if new.celular not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error celular - solo digitos';
	end if;
    	if new.DNI not rlike '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error DNI - solo digitos';
	end if;
	if new.tipo not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error tipo - solo digitos';
	end if;
    if new.estado not rlike '[0-9][0-9][0-9][0-9]' THEN
	   	SIGNAL SQLSTATE '45000' set MESSAGE_TEXT = 'Error estado - solo digitos';
	end if;
END;
