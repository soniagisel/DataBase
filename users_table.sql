create table users (
	id auto_increment NOT NULL primary key,
	first_name varchar 50 NOT NULL,
	last_name varchar 50 NOT NULL,
	sex enum "male", "female" NOT NULL,
	age init 3 NULL
);