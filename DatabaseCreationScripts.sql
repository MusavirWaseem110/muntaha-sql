create table Cities (
id MEDIUMINT NOT NULL auto_increment primary key,
name varchar(255) not null,
state varchar(255) not null,
country varchar(255) not null 
)

create table Stores (
id MEDIUMINT NOT NULL auto_increment primary key,
name varchar(255) not null,
address varchar(255) not null,
cityId mediumint not null,
contact_number varchar(255) not null
)

ALTER TABLE Stores
ADD FOREIGN KEY (cityId) REFERENCES Cities(Id);

create table Employees (
id MEDIUMINT NOT NULL auto_increment primary key,
name varchar(255) not null,
address varchar(255) not null,
storeId mediumint not null,
contact_number varchar(255) not null,
FOREIGN KEY (storeId) REFERENCES Stores(Id) 
)

alter table employees 
add column role varchar(255)


create table Suppliers (
id MEDIUMINT NOT NULL auto_increment primary key,
name varchar(255) not null,
address varchar(255) not null,
cityId mediumint not null,
storeId mediumint not null,
contact_number varchar(255) not null,
FOREIGN KEY (storeId) REFERENCES Stores(Id),
FOREIGN KEY (cityId) REFERENCES Cities(Id)
)

create table Customers (
id MEDIUMINT NOT NULL auto_increment primary key,
name varchar(255) not null,
address varchar(255) not null,
cityId mediumint not null,
storeId mediumint not null,
contact_number varchar(255) not null,
FOREIGN KEY (storeId) REFERENCES Stores(Id),
FOREIGN KEY (cityId) REFERENCES Cities(Id)
)

create table Categories (
id MEDIUMINT NOT NULL auto_increment primary key,
name varchar(255) not null
)

create table Authors (
id mediumint not null auto_increment primary key,
name varchar(255) not null
)

create table Books (
id MEDIUMINT NOT NULL auto_increment primary key,
name varchar(255) not null,
categoryId mediumint not null,
authorId mediumint not null,
publishing_year Date not null,
customerId mediumint,
storeId mediumint,
supplierId mediumint
)

ALTER TABLE Books
ADD FOREIGN KEY (categoryId) REFERENCES Categories(Id);

ALTER TABLE Books
ADD FOREIGN KEY (authorId) REFERENCES Authors(id);

ALTER TABLE Books
ADD FOREIGN KEY (customerId) REFERENCES Customers(Id);

ALTER TABLE Books
ADD FOREIGN KEY (StoreId) REFERENCES Stores(Id);

ALTER TABLE Books
ADD FOREIGN KEY (supplierId) REFERENCES Suppliers(Id);

ALTER TABLE books
MODIFY COLUMN publishing_year YEAR;

alter table books
add column Price BigInt not null;

alter table books
add column purchase_date Date;

alter table books
add column selling_date Date;

alter table employees 
add column Salary bigint;

alter table employees 
add column joining_date Date;
