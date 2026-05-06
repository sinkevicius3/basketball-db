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

create or replace function check_teams_comp()
returns trigger as
$$
begin
  if not exists (
    select 1 from participates_in
    where team = new.home_team
    and competition = new.competition
  ) then 
    raise exception 'Home team is not in the competition';
  end if;

  if not exists (
    select 1 from participates_in
    where team = new.away_team
    and competition = new.competition
  ) then 
    raise exception 'Away team is not in the competition';
  end if;

  return new;
end;
$$
language plpgsql;

create trigger trg_team_comp
before insert or update on game
for each row
execute function check_teams_comp();