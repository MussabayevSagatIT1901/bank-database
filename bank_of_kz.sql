create table verificators(
	id serial not null primary key,
	created_date date,
	status bool, --true active, false inactive
	name varchar(50)
)


create table documents (
	id serial not null primary key,
	type_of_document varchar(20), --passport, id
	document_isuue_date date,
	document_valid_until date
)


create table managers (
	id serial not null primary key,
	created_date date,
	status bool, --active true, inactive false
	name varchar(50)
)


create table products(
	id serial not null primary key,
	name text, --mortgage, cash loan, car loan, credit card
	description text
)


create table borrower (
	id serial not null primary key,
	created_at date,
	created_by serial,
	address text,
	birth_date date,
	children int,
	document_id serial,
	education varchar(30),
	phone varchar(15),
	email varchar(50),
	name text,
	gender bool, --1 male, 0 female
	marital_status varchar(20),
	salary int,
	foreign key (created_by) references managers (id),
	foreign key (document_id) references documents (id)
) 


create table credit(
	id serial not null primary key,
	disbursment_date date,
	product_id serial,
	amount int,
	term int,
	status varchar(20), --active, expired, finished
	borrower_id serial,
	credit_application_id int,
	EIR numeric(5,3),
	foreign key (product_id) references products (id),
	foreign key (borrower_id) references borrower (id),
	foreign key credit_application_id references credit_application(id)
)


create table credit_application (
	id serial not null primary key,
	requested_at date,
	product_id serial,
	status varchar(20), --rejected, approved, cancelled
	created_by int,
	requested_amount int,
	approved_amount int, --null if rejected
	requested_term int,
	approved_term int,
	credit_id serial,
	disbursment_date date, --null if rejected
	borrower_id serial,
	verificator_id serial,
	foreign key (product_id) references products (id),
	foreign key (created_by) references managers (id),
	foreign key (credit_id) references creditt (id),
	foreign key (borrower_id) references borrower (id),
	foreign key (verificator_id) references verificators (id)
)

