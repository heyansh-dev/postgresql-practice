create table product(
product_id serial primary key,
name varchar(50) not null,
sku_code char(8),
price numeric(10,2) check (price>=0),
stock int check ( stock>0)
is_available boolean default True,
category varchar(50) not null,
added_on date default now(),
last_updated timestamp default now()
);

insert into product(name , sku_code,price,stock,is_available,category)
value ('bed','asdfghjk',5000,4,True , 'furniture')

select * from product