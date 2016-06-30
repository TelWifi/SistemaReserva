Use `BDLA12` ;

DELIMITER //
create procedure paVerReservasProceso(in fecha date)     /* Parámetro de entrada */
  BEGIN
    SELECT * FROM Reserva WHERE fechaReserva = fecha && estado = '0101'
  END;
//

/*estado='0000' usuario de baja*/
DELIMITER //
create procedure validarUsuario(in _email VARCHAR(50), in _password(60) )     /* Parámetro de entrada */
BEGIN
  SELECT * FROM Usuario WHERE email=_email && password=_password
END;
//
