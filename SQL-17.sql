create database Ecommerce2;
use Ecommerce2;
create table customers
(customer_id int primary key,
first_name varchar(20),
last_name varchar (20),
email varchar(100) unique,
registration_date date,
city varchar(20),
country varchar(20));
create table products
(product_id int primary key,
product_name varchar(20),
description text,
price int,
category varchar(20),
stock_quantity int);
create table orders
(order_id int primary key,
customer_id int,
order_date datetime,
total_amount int,
order_status enum("Pending","shipped","delivered","cancelled"));
create table order_details
(order_item_id int primary key,
order_id int,
product_id int,
quantity int,
unit_price int);
insert into customers values
(1,"Alice","smith","alice@example.com","2023-03-10","Toronto","canada"),
(2,"Bob","Johnson","bob@example.com","2023-01-15","New York","USA"),
(3,"Charlie","Brown","charlie@example.com","2024-02-20","London","UK"),
(4,"Diana","Miller","diana@example.com","2023-07-01","sydney","Australia"),
(5,"Eve","Davis","eve@example.com","2022-11-05","Toronto","Canada"),
(6,"Frank","white","frank@example.com","2024-01-01","Berlin","Germany"),
(7,"Grace","Black","grace@example.com","2023-09-12","Paris","France"),
(8,"Henry","Green","henry@example.com","2023-04-25","Tokyo","Japan"),
(9,"Ivy","Hall","ivy@example.com","2023-06-18","Toronto","Canada"),
(10,"jack","king","jack@example.com","2022-10-30","Los Angeles","USA");
insert into products values
(101,"laptop pro","high performance",1200,"electronics",30),
(102,"wireless mouse","ergonomic",25,"electronics",150),
(103,"mechanical","gaming",75,"electronics",80),
(104,"SQL Basics","A beginner",30,"Books",100),
(105,"Data Science","comprehensive guide",60,"Books",70),
(106,"Bluetooth speaker","portable",50,"electronics",60),
(107,"Coffee maker","Automataic",90,"Home goods",40);
insert into orders values
(1001,1,"2024-03-15 10:30:00",1225,"Delivered"),
(1002,2,"2024-03-16 14:00:00",105,"Shipped"),
(1003,3,"2024-04-01 09:00:00",30,"Delivered"),
(1004,1,"2024-04-05 11:15:00",125,"Shipped"),
(1005,5,"2024-04-10 16:00:00",175,"Delivered"),
(1006,2,"2024-04-12 10:45:00",45,"Delivered"),
(1007,4,"2024-05-01 13:00:00",90,"Pending"),
(1008,1,"2024-05-02 09:30:00",75,"Delivered"),
(1009,6,"2024-05-05 15:00:00",150,"Shipped"),
(1010,7,"2024-05-10 11:00:00",60,"Delivered"),
(1011,8,"2024-05-12 17:00:00",25,"shipped"),
(1012,9,"2024-05-15 08:00:00",45,"Delivered");
insert into order_details values
(1,1001,101,1,1200),
(2,1001,102,1,25),
(3,1002,104,1,30),
(4,1002,105,1,60),
(5,1002,102,1,25),
(6,1003,104,1,40),
(7,1004,103,1,75),
(8,1004,106,1,50),
(9,1005,107,1,150),
(10,1005,102,1,25),
(11,1006,106,1,45),
(12,1007,107,1,90),
(13,1008,103,1,75),
(14,1009,102,1,150),
(15,1010,103,1,60);

create table employees
(employee_id int primary key,
employee_name varchar(30),
dept varchar(40),
salary int,
hire_date date,
manager_id int);
insert into employees values
(101,"Alice","HR",60000,"2020-01-15",null),
(102,"Bob","IT",75000,"2017-05-10",null),
(103,"Charlie","Finance",80000,"2018-01-01",101),
(104,"Diana","HR",62000,"2021-11-01",106),
(105,"Eve","IT",78000,"2022-05-18",108),
(106,"Frank","Sales",55000,"2020-08-01",102),
(107,"Grace","Finance",85000,"2023-02-28",112),
(108,"Henry","IT",72000,"2019-10-10",110),
(109,"Ivy","Sales",58000,"2021-04-03",111),
(110,"Jack","HR",61000,"2020-02-29",118),
(111,"Karen","IT",82000,"2020-01-01",107),
(112,"Liam","Finance",90000,"2022-03-22",109),
(113,"Mia","Sales",59000,"2018-06-13",null),
(114,"Noah","IT",76000,"2023-09-30",104),
(115,"Olivia","HR",63000,"2024-08-12",105),
(116,"Peter","Marketing",65000,"2020-09-11",120),
(117,"quinn","Marketing",68000,"2022-06-14",120),
(118,"Rachel","IT",79000,"2023-04-12",125),
(119,"Sam","Sales",57000,"2023-06-20",126),
(120,"Tina","Finance",88000,"2018-09-11",123),
(121,"Ursula","HR",null,"2018-04-14",124),
(122,"Victor",null,70000,"2019-08-15",128),
(123,"wendy","Finance",75000,"2020-08-26",134),
(124,"omini","HR",55000,"2020-09-12",130),
(125,"srishti","Finance",63000,"2016-08-02",131),
(126,"jay","sales",48000,"2022-05-05",132),
(127,"isha","sales",65000,"2020-06-11",136),
(128,"monika","Sales",56000,"2022-03-02",134),
(129,"deepak","marketing",74000,"2024-05-06",125),
(130,"Priya","marketing",66000,"2019-08-15",132),
(131,"swati","Research",95000,"2019-07-07",137),
(132,"Rohan","Research",98000,"2024-07-05",126),
(133,"Kavita","Marketing",69000,"2020-06-23",111),
(134,"Amit","Marketing",70000,null,121),
(135,"Divya","Research",98000,"2023-08-08",132),
(136,"ahem","Research",88000,"2021-08-04",136),
(137,"mahak","Research",90000,"2022-09-09",106);
create table sales
(sale_id int primary key,
employee_id int,
sale_date date,
amount int,
region varchar(20));
insert into sales values
(1,101,"2024-01-10",1000,"North"),
(2,102,"2024-01-12",1500,"South"),
(3,101,"2024-01-15",1200,"North"),
(4,103,"2024-01-18",2000,"East"),
(5,102,"2024-01-20",800,"South"),
(6,101,"2024-02-01",1100,"North"),
(7,103,"2024-02-05",2500,"east"),
(8,102,"2024-02-10",900,"South"),
(9,101,"2024-03-01",3000,"west"),
(10,104,"2024-02-15",1300,"north"),
(11,104,"2024-03-05",2800,"west"),
(12,101,"2024-03-10",1600,"north");
create table product
 (product_id int primary key,
 product_name varchar(20),
 description varchar(20),
 price int,
 category varchar(20),
 stock_quantity int);
 create table sales_target
 (target_id int primary key,
 employee_id int,
 target_month date,
 monthly_target decimal(20,2));
 
 insert into product values
(101,"laptop pro","high performance",1200,"electronics",30),
(102,"wireless mouse","ergonomic",25,"electronics",150),
(103,"mechanical","gaming",75,"electronics",80),
(104,"SQL Basics","A beginner",30,"Books",100),
(105,"Data Science","comprehensive guide",60,"Books",70),
(106,"Bluetooth speaker","portable",50,"electronics",60),
(107,"Coffee maker","Automataic",90,"Home goods",40),
(108,"green tea","High grade",100,"food & beverage",20),
(109,"cotton tshirt","comfortable",150,"apparel",30),
(110,"green tea","low grade",88,"food & beverage",35),
(111,"self help book","guidedailymental",40,"books",20),
(112,"yoga mat","Non-slip",60,"sports & outdoor",130),
(113,"mechanical","gaming",50,"electronics",120),
(114,"dining table","solid oak",350,"home goods",70),
(115,"denim jeans","stylish",200,"apparel",90);

insert into sales_target values
(1,102,"2023-05-01",5000),
(2,103,"2023-05-01",4000),
(3,104,"2023-05-01",3000),
(4,102,"2023-06-01",6000),
(5,103,"2023-06-01",4500),
(6,104,"2023-06-01",3500);
select * from customers;
select * from products;
select * from orders;
select * from order_details;
select * from employees;
select * from sales;
select * from sales_target;

with highearningemployees as (
select employee_id,employee_name from employees where salary>60000)
select employee_id,employee_name from highearningemployees;

with customerordercounts as (
select c.first_name as customer_name,count(o.order_id) as order_count from customers as c join orders as o on c.customer_id=o.customer_id
group by c.first_name)
select customer_name,order_count from customerordercounts;

with electronicsproduct as (
select product_name,price from products where category="electronics")
select product_name,price from electronicsproduct;

with departmentavgsalary as (
select employee_id,dept,avg(salary) over(partition by dept)as avg_salary from employees)
select * from departmentavgsalary;

with highearnersoverall as (
select employee_name,salary from employees where salary>(select avg(salary) from employees))
select employee_name,salary from highearnersoverall;

with departmentavgsalary as (
select employee_id,employee_name,dept,avg(salary) as avg_sal from employees
group by dept,employee_id,employee_name
),
highearnersoverall as (
select dept,salary from employees where salary>
(select avg(salary) from employees))
select d.employee_id,d.employee_name,h.salary,d.dept,d.avg_sal from departmentavgsalary as d
join highearnersoverall as h on d.dept=h.dept where h.salary>d.avg_sal;

select avg(total_amount) from orders;
select total_amount,sum(total_amount) as sum_all from orders group by total_amount
having sum_all>(select avg(total_amount) from orders);

with customertotalorders as (
select c.customer_id as customer_id,c.first_name as customer_name,o.total_amount as total_amount,o.order_id as order_id,sum(o.total_amount) as total from customers as c join orders as o on c.customer_id=o.customer_id
group by c.first_name,o.order_id),
averageordervalue as (
select customer_id,avg(total_amount) as avg_amount from orders group by customer_id)

select cu.customer_name from customertotalorders as cu join averageordervalue as av on cu.customer_id=
av.customer_id where  cu.total_amount>av.avg_amount;

select * from order_details;
select * from products;

with totalrevenue as (
select p.product_name as product_name ,p.product_id as product_id,p.category as category ,sum((od.quantity*od.unit_price)) as revenue from order_details as od
join products as p on od.product_id=p.product_id group by p.product_name,p.product_id,p.category),

topthree as (
select p.product_name as product_name,p.product_id as product_id ,p.category as category from products as p
order by p.price desc limit 3)

select tp.product_name,tr.revenue,tp.category from totalrevenue as tr join topthree as tp
 on tr.product_id=tp.product_id;






select month(sale_date) as monthly_sales,sum(amount) from sales group by month(sale_date);

select * from orders;
select * from products;
select product_name,count(product_id) from products  where product_name in ("laptop pro","sql basics")
group by product_name order by product_name ;





select p.product_name,sum(oi.quantity) over(partition by p.category order by p.price) as 
total_quantity,sum(o.total_amount)  over(partition by p.category order by p.price) as
total_revenue from order_items as oi join orders as o on o.order_id=oi.order_id join products as p
on p.product_id=oi.product_id group by p.product_name;

select *,rank() over(partition by e.city order by e.total_money_spent desc) as
 rank_in_city from (select c.first_name,c.city,sum(o.total_amount) as total_money_spent from customers as c join orders as o on 
 o.customer_id=c.customer_id group by c.first_name,c.city) as e;
 
 select o1.customer_id,c.first_name,o2.order_id,o2.order_date from orders as o1 join orders as 
 o2 on o1.customer_id=o2.customer_id join customers as c on c.customer_id=o1.customer_id 
 where datediff(o2.order_date,o1.order_date)=1;
 create view detailview3 as select customer_id,email from customers where city="Toronto" ;
 select * from detailview3;
create table kk
(select customer_id,email from customers);
select * from kk;
select * from customers;
 
select STR_TO_DATE("2024-02-20","%Y-%m-%d") from customers;
SELECT STR_TO_DATE("2024-02-20", "%Y-%m-%d") FROM customers;




select first_name,last_name from customers where country="canada" and  registration_date>2023-01-01;
select product_name,price,stock_quantity from products where category="electronics" and stock_quantity<50;
select customer_id,first_name,last_name ,count(customer_id) as total_order_placed from customers group by
customer_id,first_name,last_name order by count(customer_id) desc;
select order_id,order_date from orders join order_item on orders.order_id=order_items.order_id 
group by order_id,order_date having count(distinct product_id)>2;
select c.first_name,c.last_name from customers as c right join orders as o on c.customer_id=o.customer_id;
select product_name,price from products order by price desc limit 5;
update products set stock_quantity=stock_quantity+10 where category="Books";
select * from products;
delete from orders where order_status="cancelled";
select * from orders;
select c.customer_id,c.first_name,c.last_name,o.total_amount from customers as c join orders as o
on c.customer_id=o.customer_id where total_amount>100;
select p.product_name,p.product_id from products as p join order_items as o on p.product_id=o.product_id
where o.order_item_id is null;
select o.customer_id,p.product_name from  orders as o  join order_items as oi on 
oi.order_id=o.order_id join products as p on oi.product_id=
p.product_id group by o.customer_id,p.product_name having count(distinct o.order_id)>1;
select *,
case 
when order_item_id between 1 and 5 then "A+"
when order_item_id in (6,7,8) then "B"
when order_item_id between 9 and 12 then "C"
end as "rank"
from order_items;
select * from customers;
select * from products;
select * from orders;
select * from order_items;
select product_name,product_id,stock_quantity from products where product_id=101;
select * from orders where order_date between 2024-01-01 and 2024-03-31;
select first_name,last_name,email from customers where city="new york";
select * from products where price between 30 and 50;
select * from products where price between 50 and 100;
select order_id,order_date,total_amount from orders where order_status in ("Pending","Cancelled");
select * from products where stock_quantity<10;
select distinct category from products;
select * from customers order by registration_date asc;
select product_name,price from products order by price desc limit 5;
select * from order_items order by order_id asc,quantity desc;
select city,count(customer_id) from customers group by city;
select category,avg(price) from products group by category;
select order_date,count(order_id) from orders group by order_date;
select category,avg(price) from products group by category having avg(price)>200;
select customer_id,count(customer_id) from customers group by customer_id having count(customer_id)>3;
select products.product_id from products join order_items on 
products.product_id=order_items.product_id where order_items.quantity>50;
select c.first_name,c.last_name from customers as c join products as p
 where p.product_name ="laptop pro";
 select c.first_name,c.last_name from customers as c where customer_id in (select o.customer_id from orders
 as o join order_items as oi on o.order_id=oi.order_id join products as p on oi.product_id=p.product_id
 where p.product_name="Laptop pro");
 select c.first_name,c.last_name from customers as c join orders as o on c.customer_id=
 o.customer_id join order_items as oi on o.order_id=oi.order_id join products as p
 on p.product_id=oi.product_id where product_name=(select 
 p.product_name from products as p where p.product_name="Laptop pro");
 select * from orders;
 select * from order_items;
 select * from customers;
 select avg(price) from products;
 select distinct oi.order_id from order_items as oi join products as p on oi.product_id=p.product_id
 where oi.unit_price>(select avg(price) from products);
 select order_id from order_items where unit_price>(select avg(price) from products);
 select first_name,last_name from customers where customer_id not in (select customer_id from orders);
 select p.product_name from products as p join order_items as oi on p.product_id=oi.product_id join 
 orders as o on o.order_id=oi.order_id join customers as c on c.customer_id=o.customer_id where 
 c.first_name="john" and c.last_name="Doe";
 insert into customers values
 (11,"ayesha","sharma","ayesha@example.com","2022-03-09","new york","USA");
 select * from customers;
 select * from products;
 update customers set city="berlin",country="germany" where customer_id=5;
 select * from customers;
 select * from orders;
 select * from order_items;
 select *,
 case when category="electronics" then price+price*0.10
 end as "price_increment"
 from products;
 update orders set order_status="Archived" where order_date<"2024-01-01";
 start transaction;
 update products set stock_quantity=stock_quantity-5 where product_id=101;
 select * from products;
 rollback;
 select * from products;
 delete from order_items where order_item_id;
 start transaction;
 insert into order_items values
 (16,1006,104,1,70);
 commit;
 select * from order_items;
 alter table orders add column delivery_date date;
 select * from orders;
 alter table products modify column price decimal(12,4);
 select * from products;
 alter table products rename column description to product_description;
 select * from products;
 truncate order_items;
 select * from order_items;
 drop table order_items;
 select * from order_items;
 select product_name,
 case when stock_quantity>0 then "In stock"
 when stock_quantity between 1 and 10 then "Low stock"
 when stock_quantity=0 then "out of stock"
 end as "stock_status"
 from products;
 select order_id,total_amount,
 case when total_amount<50 then "small order"
 when total_amount between 50 and 200 then "medium order"
 when total_amount>200 then "Large order"
 end as "value_category"
 from orders;
 select order_id,sum(quantity) over () from order_items;
 select product_name,category,price,min(price) over(partition by category) as ranking from products
 order by ranking desc;
 select *, avg(total_amount)  over() as avg_amount from orders order by order_date;
 create temporary table custom1
 (select * from orders where order_date between "2024-01-01" and "2024-12-31");
 select * from custom1;
 select * from products;
 select * from order_items;
 select * from orders;
 select c.first_name,c.last_name from customers as c join orders as o on
 c.customer_id=o.customer_id order by o.total_amount desc limit 5;
 select avg(total_amount) from orders;
 select c.first_name,c.last_name,total_amount,count(order_id) as no_of_orders from customers as c join orders as o on 
 c.customer_id=o.customer_id group by c.first_name,c.last_name,total_amount;
 select o.order_id,count(distinct p.product_name) from products as p join order_items as oi on p.product_id=
 oi.product_id join orders as o on o.order_id=oi.order_id group by o.order_id limit 3;
 select category,sum(total_amount) over(partition by category) as each_category from products as p join order_items as oi on p.product_id=
 oi.product_id join orders as o on o.order_id=oi.order_id group by category;
 select o.order_id,o.order_date,count(p.product_id) from orders as o join order_items as oi on
 o.order_id=oi.order_id join products as p on p.product_id=oi.product_id group by o.order_id,
 o.order_date having count( p.product_id)>2;
 select * from orders;
 select * from order_items;
 select avg(total_amount) from orders where month("october");
 select o.order_id,c.first_name,o.order_date from customers as c join orders as o on 
 c.customer_id=o.customer_id;
 select p.product_name,oi.order_id,oi.quantity from products as p join order_items as oi on
 p.product_id=oi.product_id;
 select * from products;
 select c.first_name,p.product_name,oi.quantity from products as p join order_items as oi on
 p.product_id=oi.product_id join orders as o on o.order_id=oi.order_id join customers as c on
 o.customer_id=c.customer_id;
 select c.first_name,o.total_amount from customers as c join orders as o on c.customer_id=o.customer_id
 where city="new york";
 select p.product_name,p.category,p.price from products as p left join order_items as oi on
 p.product_id=oi.product_id where oi.order_id is null;
 select *,row_number() over ( order by order_id) as rn from orders;
 select *,rank() over( order by price desc) from products;
 select *,dense_rank() over(order by customer_id) from orders;
 select *,rank() over(partition by order_date order by customer_id) from orders;
 select e.* from
 (select product_name,row_number() over(partition by category order by price desc) as rn from products)
 as e where e.rn<2;
 select order_id,total_amount,
 case when total_amount>500 then "high value"
 else "Standard value"
 end as "order_status"
 from orders;
 select * from orders;
 alter table orders drop column delivery_date;
 select o.order_id,c.first_name,
 case when o.order_date="2024-03-15 10:30:00" then "3-5 days"
 when o.order_date="2024-04-05 11:15:00" then "5-7 days"
 end as "delivery_estimate"
 from orders as o join customers as c on o.customer_id=c.customer_id;
 create table employees1
(employee_id int primary key,
employee_name varchar(30),
dept varchar(40),
salary int,
customer_id int);
insert into employees1 values
(101,"Alice","HR",60000,1),
(102,"Bob","IT",75000,2),
(103,"Charlie","Finance",80000,3),
(104,"Diana","HR",62000,1),
(105,"Eve","IT",78000,5),
(106,"Frank","Sales",55000,2),
(107,"Grace","Finance",85000,4),
(108,"Henry","IT",72000,1),
(109,"Ivy","Sales",58000,6),
(110,"Jack","HR",61000,7),
(111,"Karen","IT",82000,2),
(112,"Liam","Finance",90000,7),
(113,"Mia","Sales",59000,9),
(114,"Noah","IT",76000,8),
(115,"Olivia","HR",63000,5),
(116,"Peter","Marketing",65000,8),
(117,"quinn","Marketing",68000,3),
(118,"Rachel","IT",79000,9),
(119,"Sam","Sales",57000,1),
(120,"Tina","Finance",88000,4),
(121,"Ursula","HR",null,8),
(122,"Victor",null,70000,2),
(123,"wendy","Finance",75000,3),
(124,"omini","HR",55000,3),
(125,"srishti","Finance",63000,2),
(126,"jay","sales",48000,9),
(127,"isha","sales",65000,9),
(128,"monika","Sales",56000,6),
(129,"deepak","marketing",74000,5),
(130,"Priya","marketing",66000,7),
(131,"swati","Research",95000,3),
(132,"Rohan","Research",98000,4),
(133,"Kavita","Marketing",69000,8),
(134,"Amit","Marketing",70000,8),
(135,"Divya","Research",98000,5),
(136,"ahem","Research",88000,2),
(137,"mahak","Research",90000,1);
select * from orders;
drop table salesview;
 create table salesview
 (select o.order_id,o.customer_id,o.total_amount,e.dept from orders as o join employees1 as e on
 o.customer_id=e.customer_id where dept="sales");
 select * from salesview;
 create temporary table customertotalspending
 (select c.first_name from customers as c join orders as o on c.customer_id=o.customer_id where
 o.total_amount>1000);
 select * from customertotalspending;
 create temporary table topsellingproducts1
 (select e.* from 
 (select oi.quantity,p.product_name,p.category,rank() over(partition by category order by oi.quantity desc) as rn from 
 order_items as oi join products as p on oi.product_id=p.product_id) as e where e.rn<6);
 select * from topsellingproducts1;
 select *,sum(total_amount)  over(order by order_date) as total from orders;
 select product_name from products where price=(select max(price) from products);
 select * from customers;
 select c.first_name from customers as c join orders as o on c.customer_id=o.customer_id
 join order_items as oi on o.order_id=oi.order_id join products as p on oi.product_id=p.product_id
 where p.product_name=(select product_name from products where product_name="laptop pro");
 select avg(o.total_amount) from orders as o join customers as c on o.customer_id=c.customer_id
 where c.city=(select city from customers where city="sydney");
 select p.product_name,sum(oi.quantity) from products as p join order_items as oi on p.product_id=oi.product_id
 group by p.product_name;
 select * from orders;
 select * from order_items;
 select * from products;
 select category,count(product_id) from products group by category;
 select category,avg(price) from products group by category having avg(price)>100;
 select c.city,sum(p.stock_quantity) from  customers as c join orders as o on c.customer_id=o.customer_id
 join order_items as oi on o.order_id=oi.order_id join products as p
 on p.product_id=oi.product_id group by c.city having sum(p.stock_quantity)>50;
 select p.product_name, count(distinct o.customer_id) from  customers as c join orders as o on c.customer_id=o.customer_id
 join order_items as oi on o.order_id=oi.order_id join products as p on p.product_id=oi.product_id
 group by p.product_name having count(o.customer_id)>3; 
 select * from customers;
 select * from orders;
 select * from order_items;
 select * from products;
 select product_name,price from products;
 select * from customers where first_name="john";
 select * from products where price>50;
 select order_id,order_date from orders where month("2024-04-15");
 select * from products where category="electronics";
 select distinct category from products;
 select count(customer_id) from customers;
 select avg(price) from products;
 select max(price) from products;
 select c.first_name,c.last_name from customers as c join orders as o on c.customer_id=o.customer_id;
 select p.product_name,oi.quantity from products as p join order_items as oi on p.product_id=
 oi.product_id where oi.order_id=1001;
 select c.customer_id,count(o.order_id) from customers as c join orders as o on
 c.customer_id=o.customer_id group by c.customer_id;
 select p.price*oi.quantity as revenue from products as p join order_items as oi on
 p.product_id=oi.product_id;
 select c.first_name from customers as c join orders as o on c.customer_id=o.customer_id
 where o.order_date="2024-04-12 10:45:00";
 select p.product_name from products as p right join order_items as oi on p.product_id=
 oi.product_id where oi.order_id is null;
 select * from products where stock_quantity>100;
 select c.customer_id,c.first_name,o.total_amount from customers as c join orders as o on
 c.customer_id=o.customer_id;
 select o.order_id,o.order_date from orders as o join order_items as oi on o.order_id=oi.order_id
 join products as p on p.product_id=oi.product_id where p.category="home goods";
 update products set stock_quantity=stock_quantity-5  where product_id=101;
 select * from products;
 delete from orders where order_date="2022-01-01";
 select c.customer_id,count(distinct p.product_name) from customers as c join orders as o on
 o.customer_id=c.customer_id join order_items as oi on oi.order_id=o.order_id join products as p
 on p.product_id=oi.product_id group by c.customer_id having count(p.product_name)>3;
 select avg(unit_price) from order_items;
 select e.* from
 (select *,rank() over(order by price desc) as rn from products) as e where e.rn<6;
 select c.first_name,c.last_name from customers as c join orders as o on c.customer_id=o.customer_id
 where o.total_amount>500;
 select *,sum(total_amount) over(order by order_date) as total from orders;
 select *,count(order_id) over(partition by category) from products join order_items on 
 order_items.product_id=products.product_id;
 select c.first_name,count(distinct p.product_id) from customers as c join orders as o on c.customer_id=o.customer_id
 join order_items as oi on oi.order_id=o.order_id join products as p on p.product_id=
 oi.product_id group by c.first_name having count(p.product_id)>1;
 select p.product_name,max(oi.quantity) from products as p join order_items as oi on p.product_id=
 oi.product_id group by p.product_name;
 select order_id,order_date from orders where year(order_date)=2023;
 select *,first_value(product_name) over(partition by category ) as first from products;
 select c.first_name,c.customer_id from customers as c join ( select customer_id ,min(order_date) as first_order_date
 from orders group by customer_id) as fo on c.customer_id=fo.customer_id where c.registration_date=
 fo.first_order_date;
 select c.first_name,p.product_name,o.order_date,oi.quantity from customers as c join orders as o on
 c.customer_id=o.customer_id join order_items as oi on oi.order_id=o.order_id join products as p
 on p.product_id=oi.product_id;
 select *,lag(price) over(partition by category order by price) as behind from products;
 select *,lag(price,1,0) over(partition by category order by price) as behind from products;
 select *,lead(total_amount) over(partition by order_status order by order_id) from orders;
 select *,
 case when price>lag(price) over(partition by category order by price) then "high"
 when price<lag(price) over(partition by category order by price) then "low"
 when price=lag(price) over(partition by category order by price) then "equal"
 end as price_range
 from products;
 
 select *,
 first_value(product_name) over w as max_price,
 last_value(product_name) over w as min_price
 from products window w as (partition by category order by price desc rows between unbounded 
 preceding and unbounded following);
 
 
 select * from customers;
 select * from products;
 select * from orders;
 select * from order_items;
 
 select c.first_name,count(distinct oi.product_id) from customers as c join orders as o on
 c.customer_id=o.customer_id join order_items  as oi on o.order_id=oi.order_id group by c.first_name
 having count(oi.product_id)>=3;
 
 select c.first_name,p.product_name,count(oi.order_id) from customers as c join orders as o on
 c.customer_id=o.customer_id join order_items as oi on oi.order_id=o.order_id join products as p
 on p.product_id=oi.product_id group by c.first_name,p.product_name having count(oi.order_id)>1;
 
 select c.first_name,avg(o.total_amount),sum(oi.quantity) from customers as c join orders as o
 on c.customer_id=o.customer_id join order_items as oi on oi.order_id=o.order_id where o.total_amount<=
 (total_amount*1.05) group by c.first_name ;
 
 select p.product_name,oi.order_id from order_items as oi join products as p on p.product_id=
 oi.product_id where p.stock_quantity=0;
 
 select p.product_name from products as p join order_items as oi on p.product_id=oi.product_id join 
 orders as o on oi.order_id=o.order_id where oi.order_id!=o.order_id;
 
 select p.product_name,avg(oi.quantity) over(order by oi.quantity desc) as avg_quantity from products as
 p join order_items as oi on p.product_id=oi.product_id;
 
 select *,sum(o.total_amount) over(partition by p.category order by o.total_amount) as total_revenue,
 round(cume_dist() over(partition by p.category order by price)*100) as percentage_contribution from products as p
 join order_items as oi on p.product_id=oi.product_id join orders as o on oi.order_id=o.order_id;
 
 select month(o.order_date) as sales_month,sum(o.total_amount) as total_revenue from orders as o
group by sales_month order by  total_revenue desc limit 1;

select c.first_name from customers as c join orders as o on c.customer_id=o.customer_id
join order_items as oi on oi.order_id=o.order_id group by c.first_name having avg(oi.quantity)<
(select count(order_id) from orders);

select *,avg(total_amount)  over(partition by order_date) as daily_avg ,
total_amount-avg(total_amount) over(partition by order_date) as differnece from orders order by
order_date,order_id;

 select * from order_items;
 select * from orders;
 select c.first_name,sum(total_amount) from orders as o join customers as c on
 c.customer_id=o.customer_id where o.order_date>"2024-06-30 12:00:00" group by c.first_name;
 
 select * from products where price>(select avg(price) from products);
 
 select *,rank()over(order by total_amount desc) as total_spending_rank from orders;
 
 select c.first_name,p.product_name from customers as c join orders as o on c.customer_id=o.customer_id
 join order_items as oi on o.order_id=oi.order_id join products as p on p.product_id=oi.product_id
 where oi.quantity=(select max(quantity) from order_items);
 
 select *,sum(total_amount) over(order by order_date) as daily_sales_revenue from orders;
 
 select c.first_name,min(order_date) as first_order_date,max(order_date) as last_order_date from orders
 as o join customers as c on c.customer_id=o.customer_id group by c.first_name;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 










