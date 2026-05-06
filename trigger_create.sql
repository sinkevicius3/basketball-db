create or replace function remove_contract_details()
returns trigger as
$$
begin
  update player
  set start_date = null, end_date = null, value = null
  where team = old.id;
  return old;
end;
$$ 
language plpgsql;

create trigger trg_contract_details
before delete on team
for each row
execute function remove_contract_details();