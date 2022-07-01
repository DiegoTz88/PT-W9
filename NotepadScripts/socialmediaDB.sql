create database if not exists socialmedia;

use socialmedia;

drop table if exists users;
drop table if exists posts;
drop table if exists comments;

CREATE TABLE users(
	user_id int(15) not null auto_increment,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	username varchar(20),
	email varchar(50) not null,
	password varchar(20) not null,
	primary key(user_id)
);

CREATE TABLE posts(
	post_id int(15) not null auto_increment,
	user_id int(15) not null,
	post_text varchar(500) not null,
	post_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	primary key(post_id),
	foreign key (user_id) references users(user_id)
);

CREATE TABLE comments(
	comment_id int(15) not null auto_increment,
	user_id int(15) not null,
	post_id int(15) not null,
	comment_text varchar(250) not null,
	comment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	primary key(comment_id),
	foreign key (user_id) references users(user_id),
	foreign key (post_id) references posts(post_id)
);