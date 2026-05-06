insert into team (city, name) values ('Kaunas', 'Zalgiris');
insert into team (city, name) values ('Vilnius', 'Rytas');
insert into team (city, name) values ('Istanbul', 'Fenerbahce');


insert into competition (name, season) values ('EUROLEAGUE', '2025/2026');
insert into competition (name, season) values ('LKL', '2025/2026');


insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Sylvain', 'Francisco', '1997-10-10', 'FRA', 'G', 1, '2024-09-01', '2026-06-30', 1250000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Nigel', 'Williams-Goss', '1994-09-16', 'USA', 'G', 1, '2025-09-01', '2027-06-30', 1250000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Arnas', 'Butkevicius', '1992-10-22', 'LTU', 'F', 1, '2022-09-01', '2027-06-30', 700000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Azuolas', 'Tubelis', '2002-03-22', 'LTU', 'F', 1, '2025-09-01', '2027-06-30', 500000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Moses', 'Wright', '1998-12-23', 'USA', 'C', 1, '2025-09-01', '2026-06-30', 1000000.00);


insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Jerrick', 'Harding', '1998-04-13', 'USA', 'G', 2, '2025-09-01', '2026-06-30', 500000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Augustas', 'Marciulionis', '2002-03-21', 'LTU', 'G', 2, '2026-01-01', '2026-06-30', 150000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Ignas', 'Sargiunas', '1999-09-11', 'LTU', 'G', 2, '2024-09-01', '2026-06-30', 300000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Kay', 'Bruhnke', '2001-07-15', 'GER', 'F', 2, '2025-09-01', '2026-06-30', 200000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Gytis', 'Masiulis', '1998-04-10', 'LTU', 'C', 2, '2022-09-01', '2028-06-30', 400000.00);


insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Wade', 'Baldwin IV', '1996-03-29', 'USA', 'G', 3, '2024-09-01', '2028-06-30', 2000000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Talen', 'Horton-Tucker', '2000-11-25', 'USA', 'G', 3, '2025-09-01', '2027-06-30', 1800000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Tarik', 'Biberovic', '2001-01-28', 'TUR', 'F', 3, '2018-09-01', '2026-06-30', 1900000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Bonzie', 'Colson', '1996-01-12', 'USA', 'F', 3, '2024-09-01', '2028-06-30', 1500000.00);
insert into player (first_name, last_name, birth_date , nationality , position, team, start_date, end_date, value)
values ('Nicolo', 'Melli', '1991-01-26', 'ITA', 'C', 3, '2024-09-01', '2027-06-30', 1000000.00);


insert into participates_in (competition, team) values (1, 1);
insert into participates_in (competition, team) values (2, 1);
insert into participates_in (competition, team) values (2, 2);
insert into participates_in (competition, team) values (1, 3);


insert into game (date, home_team, away_team, home_score, away_score, competition)
values ('2026-04-19', 2, 1, 70, 75, 2);
insert into game (date, home_team, away_team, home_score, away_score, competition)
values ('2026-03-15', 1, 2, 98, 81, 2);
insert into game (date, home_team, away_team, home_score, away_score, competition)
values ('2025-10-03', 1, 3, 84, 81, 1);
insert into game (date, home_team, away_team, home_score, away_score, competition)
values ('2026-03-27', 3, 1, 82, 92, 1);