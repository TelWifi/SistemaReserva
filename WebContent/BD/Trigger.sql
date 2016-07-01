delimiter //
create trigger check_precio before insert on preciohora
for each row
begin
  if new.precio < 0.0 then
    signal sqlstate '45000';
      set message_text = 'Precio tiene que se mayor a 0';
  end if;
end;
//
  
