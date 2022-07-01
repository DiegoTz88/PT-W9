create database if not exists socialmedia;

use socialmedia;

drop table if exists user;
drop table if exists post;
drop table if exists comment;

CREATE TABLE user(
	user_id int not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	username varchar(20),
	email varchar(50) not null,
	password varchar(20) not null,
	primary key(user_id)
);

CREATE TABLE post(
	post_id int not null,
	user_id int not null,
	post_text varchar(500) not null,
	post_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	primary key(post_id),
	foreign key (user_id) references user(user_id)
);

CREATE TABLE comment(
	comment_id int not null,
	user_id int not null,
	post_id int not null,
	comment_text varchar(250) not null,
	comment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	primary key(comment_id),
	foreign key (user_id) references user(user_id),
	foreign key (post_id) references post(post_id)
);