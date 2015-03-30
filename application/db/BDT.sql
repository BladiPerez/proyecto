








drop table if exists ci_sessions cascade;

create table ci_sessions (
	session_id    varchar(40)  not null default '0',
	ip_address    varchar(45)  not null default '0',
	user_agent    varchar(120) not null,
	last_activity numeric(10)  not null default 0,
	user_data     text         not null,
	constraint pk_ci_sessions primary key (session_id)
);

create index last_activity_idx on ci_sessions (last_activity);

