create or replace procedure modborrower(
   name1 text,
   address1 text ,
   phone1 varchar
)
language plpgsql
as $$
begin

    update borrower
    set name = name1
    where id = 1;

    update borrower
    set address=address1
    where id = 1;

      update borrower
    set phone=phone1
    where id = 1;

    commit;
end;$$;
all modborrower('Nancy Drew','Black Road','87014977389');
 
