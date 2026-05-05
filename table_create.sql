create table team (
  id    int         generated always as identity start with 1 increment by 1,
  city  varchar(50) not null,
  name  varchar(50) not null,
  
  constraint pk_team primary key (id)
);

create table player (
  id          int         generated always as identity start with 1 increment by 1,
  first_name  varchar(50) not null,
  last_name   varchar(50) not null,
  birth_date  date        not null,
  nationality char(3)     not null,
  position    char(1),
  team        int,
  start_date  date,
  end_date    date,
  value       decimal(12, 2),

  constraint pk_player      primary key (id),
  constraint fk_player_team foreign key (team) references team(id) on update cascade on delete set null,
  constraint check_pos      check (position in ('G', 'F', 'C')),
  constraint check_date     check (end_date is null or end_date > start_date),
  constraint check_val      check (value >= 0)
);

create table competition (
  id      int         generated always as identity start with 1 increment by 1,
  name    varchar(50) not null,
  season  char(9)     not null,

  constraint pk_competition primary key (id),
  constraint unique_comp    unique (name, season),
  constraint check_season   check (season ~ '^[0-9]{4}/[0-9]{4}$')
);