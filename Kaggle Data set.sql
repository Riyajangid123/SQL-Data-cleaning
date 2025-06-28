SELECT * FROM cardiovascular.cardio_train;
select * from cardiovascular.cardio_train limit 10;
select count(id) as total_records from cardiovascular.cardio_train;
select avg(age) from cardiovascular.cardio_train;
select * from cardiovascular.cardio_train where gender=1;
select id,weight from cardiovascular.cardio_train where height>170;
select gender as male ,count(gender) from cardiovascular.cardio_train where gender=1 group by gender;
select gender as female ,count(gender) from cardiovascular.cardio_train where gender=2 group by gender;
select gender,count(id) from cardiovascular.cardio_train group by gender;
select gender,avg(cholesterol) from cardiovascular.cardio_train group by gender;
select * from cardiovascular.cardio_train where smoke=1 and alco=1;
select max(ap_hi) as maximum_aphi,min(ap_lo) as minimum_aplow from cardiovascular.cardio_train;
select id,age,cardio from cardiovascular.cardio_train where cardio=1 and cholesterol=3;
select * from cardiovascular.cardio_train order by age desc,height asc;
select avg(weight) from cardiovascular.cardio_train where cardio=1 and cholesterol=2;
select id from cardiovascular.cardio_train where ap_hi<ap_lo;
select gender,count(id) from cardiovascular.cardio_train where active=1 and cardio=1 group by gender;
select id from cardiovascular.cardio_train where ap_hi=(select max(ap_hi) from 
cardiovascular.cardio_train) and ap_lo=(select min(ap_lo) from cardiovascular.cardio_train);
alter table  cardiovascular.cardio_train add column category varchar(20);
select id,age from cardiovascular.cardio_train where height=(select height from
cardiovascular.cardio_train where id=18393) and weight=(select weight from
cardiovascular.cardio_train where id=18393) and id!=1893;
select t1.id as person1,t2.id as person2 from  cardiovascular.cardio_train as t1 join 
 cardiovascular.cardio_train as t2 on t1.height=t2.height where t1.id<t2.id;
 select t1.age,t1.gender,t1.id,t2.age,t2.gender,t2.id from  cardiovascular.cardio_train as t1 join
  cardiovascular.cardio_train as t2 on t1.age=t2.age;
  alter table cardiovascular.cardio_train drop column category;
  alter table cardiovascular.cardio_train drop column age_group;
select *,
case
when weight>70 then "overweight"
when weight<70 then "underweight"
when weight=70 then "not define"
end  as age_group
from cardiovascular.cardio_train;
  
 




