Use `BDLA12` ;

DELIMITER //
create procedure paVerReservasProceso(in fecha date)     /* Parámetro de entrada */
  BEGIN
    SELECT * FROM Reserva WHERE fechaReserva = fecha && estado = '0101'
  END;
//

/*estado='0000' usuario de baja*/
DELIMITER //
create procedure AutenticarUsuario(in _email VARCHAR(50), in _password(60) )     /* Parámetro de entrada */
BEGIN
  SELECT * FROM Usuario WHERE email=_email && password =_password
END;
//

DELIMITER $$
CREATE PROCEDURE paAsignarOperador (nomSede varchar(50), dniOpe char(8), fechaIni time)
BEGIN
	DECLARE idSe int;
    DECLARE idOpe int;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
    BEGIN
    	ROLLBACK;
    END;
    SET idSe = (SELECT * FROM sede WHERE nombre = nomSede);
    SET idOpe = (SELECT * FROM operador WHERE Operador_idUsuario = (SELECT idUsuario FROM usuario WHERE DNI = dniOpe));
    START TRANSACTION;
    INSERT INTO dirige (inicio, Dirige_idSede, Dirige_idOperador) VALUES (fechaIni, idSe, idOpe);
COMMIT;
END;
