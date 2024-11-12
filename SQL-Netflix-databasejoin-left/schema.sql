--Schema for 'netflix revenue'
create table netflix_revenue (
  Area varchar(45) not null,
  Period varchar(45) not null,
  Revenue integer not null
);

--Schema for 'netflix subscribers'
create table netflix_subscribers (
  Area varchar(45) not null,
  Period varchar(45) not null,
  subscribers integer not null
);