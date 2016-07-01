create trigger check_precio before insert on preciohora for each row
begin
  if new.precio < 0.0 then
    signal sqlstate '45000'set message_text = 'Error precio';
  end if;
end;
