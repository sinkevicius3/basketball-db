create view player_extended_info as
select *, 
  extract(year from age(birth_date)) as age,
  (end_date - current_date) as contract_days_left
from player;