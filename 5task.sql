
    



create or replace function log_last_name_changes()
returns trigger
language plpgsql
as
$$
begin
if NEW.name <>OLD.name then
insert into borrower(name,address,phone)
values(OLD.name,OLD.address,OLD.phone);
end if;
return new;
end;
$$


create trigger last_name_changes
before update
on borrower
for each row
execute procedure log_last_name_changes();


update borrower
set address='12 Dally Blind'
where name='Carl Glover';

update borrower 
set phone=87014032378
where name='Carl Glover';
 
 update borrower
 set name='Arman Armanbayev'
 where address='1175 Reynolds Alley';

