select * from students;
select * from students;
select id from students;
select email from students;
select name, email from students;
select id, name, email, created_on from students;
select * from students where password='12333';
select * from students where created_on = '2021-01-26';
select * from students where name like 'Anna%';
select * from students where name like '%8';
select * from students where name like '%a%';
select * from students where created_on = '2021-07-12';
select * from students where created_on = '2021-07-12' and password = '1m313';
select * from students where created_on = '2021-07-12' and name like '%Andrey%';
select * from students where created_on = '2021-07-12' and name like '%8%';
select * from students where id = 110;
select * from students where id = 153;
select * from students where id = 140;
select * from students where id = 130;
select * from students where id < 127 or id > 188;
select * from students where id <= 137;
select * from students where id >= 137;
select * from students where id between 180 and 190;
select * from students where password in ('12333', '1m313', '123313'
);
select * from students where created_on in ('2020-10-03', '2021-05-19', '2021-03-26');
select min(id) min_id from students;
select max(id) max_id from students;
select count(id) num_users from students;
select id, name, created_on from students order by created_on;
select id, name, created_on from students order by created_on DESC;



