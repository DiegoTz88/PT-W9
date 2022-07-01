create database if not exists customercar;

use customercar;

drop table if exists customers;
drop table if exists customer_cars;
drop table if exists cars;

CREATE TABLE cars (
	car_id int not null,
	model varchar(25) not null,
	make varchar(25) not null,
	year char(4) not null,
	price decimal(7, 2),
	primary key(car_id)
);

CREATE TABLE customers (
	customer_id int not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	primary key(customer_id)
);

CREATE TABLE customer_car (
	customer_car_id int not null,
	customer_id int not null,
	car_id int not null,
	primary key(customer_car_id),
	foreign key(customer_id) references customers(customer_id),
	foreign key(car_id) references cars(car_id)
);