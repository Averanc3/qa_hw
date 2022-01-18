select * from employees inner join employee_salary on employees.id = employee_id
                        inner join salary on salary.id = salary_id
                        where employees.id = 32;
                        
select e.employee_name from employees e inner join employee_salary es on e.id = es.employee_id
   						  inner join salary s on s.id  = es.salary_id
where s.monthly_salary < 2000;

select * from employees e inner join employee_salary es on e.id = es.employee_id
                          right join salary s on s.id = es.salary_id
where es.salary_id is null;

select * from employees e inner join employee_salary es on e.id = es.employee_id
                          right join salary s on s.id = es.salary_id
where es.salary_id is null and s.monthly_salary < 2000;

select * from employees e left join employee_salary es on e.id = es.employee_id
where es.employee_id is null;

select e.employee_name, r.role_name from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on re.role_id = r.id

select e.employee_name, r.role_name from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on re.role_id = r.id
where r.role_name like '%Java %'

select e.employee_name, r.role_name from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on re.role_id = r.id
where r.role_name like '%Python%'

select e.employee_name, r.role_name from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on re.role_id = r.id
where r.role_name like '%QA%'

select e.employee_name, r.role_name from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%Manual QA%'  

select e.employee_name, r.role_name from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%Automation QA%'

select e.employee_name, s.monthly_salary from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on re.role_id = r.id
                          inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
where r.role_name like 'Junior%'

select e.employee_name, s.monthly_salary from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on re.role_id = r.id
                          inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
where r.role_name like 'Middle%'

select e.employee_name, s.monthly_salary from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on re.role_id = r.id
                          inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
where r.role_name like 'Senior%'

select s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on es.salary_id = s.id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on re.role_id = r.id
where r.role_name like '%Java %'

select s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on es.salary_id = s.id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on re.role_id = r.id
where r.role_name like '%Python%'

select e.employee_name, s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like 'Junior Python%'                        

select e.employee_name, s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like 'Middle JavaScript%' 

select e.employee_name, s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like 'Senior Java %'

select s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like 'Junior%QA %'

select round(avg(s.monthly_salary), 2) from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like 'Junior%'

select sum(s.monthly_salary) from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%JavaScript%'

select min(s.monthly_salary) from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%QA%'

select max(s.monthly_salary) from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%QA%'

select count(e.id) from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%QA%'

select count(e.id) from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on r.id = re.role_id
where r.role_name like 'Middle%'

select count(e.id) from employees e inner join roles_employee re on e.id = re.employee_id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%developer'

select sum(s.monthly_salary) from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where r.role_name like '%developer'

select e.employee_name, r.role_name, s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
order by e.employee_name, r.role_name, s.monthly_salary

select e.employee_name, r.role_name, s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where s.monthly_salary between 1700 and 2300
order by e.employee_name, r.role_name, s.monthly_salary

select e.employee_name, r.role_name, s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where s.monthly_salary < 2300
order by e.employee_name, r.role_name, s.monthly_salary

select e.employee_name, r.role_name, s.monthly_salary from employees e inner join employee_salary es on e.id = es.employee_id
                          inner join salary s on s.id = es.salary_id
                          inner join roles_employee re on re.employee_id = e.id
                          inner join roles r on r.id = re.role_id
where s.monthly_salary in (1100, 1500, 2000)
order by e.employee_name, r.role_name, s.monthly_salary













                          

                          
