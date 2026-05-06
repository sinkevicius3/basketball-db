create view player_extended_info as
select *, 
  extract(year from age(birth_date)) as age,
  (end_date - current_date) as contract_days_left
from player;

create view game_info as
select g.date,
  ht.city || ' ' || ht.name as home_team,
  at.city || ' ' || at.name as away_team,
  g.home_score,
  g.away_score,
  c.name || ' ' || c.season as competition
from game as g
join team ht on g.home_team = ht.id
join team at on g.away_team = at.id
join competition c on g.competition = c.id;

create materialized view team_roster as
select t.name as team_name, t.city as team_city,
  p.id, p.first_name, p.last_name,
  p.birth_date, p.nationality, p.position
from team as t
join player as p on t.id = p.team
order by t.name, t.city, p.last_name
with data;

/* run refresh_mat_view.sql when team rosters update */