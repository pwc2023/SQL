CREATE DATABASE testEMP_DATA
USE testEMP_DATA
Create table employee(
e_id int not null,
e_nm varchar(20),
e_sal int,
e_age int, 
e_gen varchar(20),
e_dept varchar(20),
e_dept_role varchar(20),
e_sup int,
primary key(e_id)
);
create table dept(
d_id int not null,
d_nm varchar(20),
d_loc varchar(20),
primary key(d_id)
);
/* insert data into the table*/
insert into employee values(101,'Rockee',108000,24,'Female','Management','CEO',0);
insert into employee values(102,'Tom',98000,28,'Male','Sales&Marketing','S&M Head',101);
insert into employee values(103,'Anne',88000,23,'Female','Development', 'Development Head',101);
insert into employee values(104,'Andy',88000,24,'Male','Operations','Operations Head',101);
insert into employee values(105,'Bob',85000,24,'Male','Accounts','Accounts Head',101);
insert into employee values(1,'Michael',32000,29,'Male','Sales&Marketing','Team',102);
insert into employee values(2,'Louis',36000,29,'Male','Development','Team',103);
insert into employee values(3,'Sam',23000,23,'Male','Operations','Team',104);
insert into employee values(4,'Julie',32000,23,'Female','Operations','Team',104);
insert into employee values(5,'Aisha',42000,29,'Female','Accounts','Team',105);
insert into employee values(6,'Josh',39000,31,'Male','Operations','Team',104);
insert into employee values(7,'Emily',33000,30,'Female','Sales&Marketing','Team',102);
insert into employee values(8,'Rachel',39000,32,'Female','Development','Team',103);
insert into employee values(9,'Roby',45000,40,'Female','Development','Team',103);
insert into employee values(10,'Josh',20000,21,'Male','Accounts','Team',105);
insert into employee values(11,'Chris',51000,45,'Male','Operations','Team',104); 
insert into employee values(12,'Susan',42000,36,'Female','Sales&Marketing','Team',102);
insert into employee values(13,'Kate',18000,24,'Female','Development','Team',103);


insert into dept values(100,'Management','Santa Clara');
insert into dept values(101,'Sales&Marketing','Chicago');
insert into dept values(102,'Operations','Boston');
insert into dept values(103,'Accounts','Chicago');
insert into dept values(104,'Development','Boston');
insert into dept values(105,'Content','NewYork');
insert into dept values(106,'Design','LA');

/* Q1
FIND OUT EMPLOYEES HAVING THEIR AGE IN THE RANGE OF 25 – 30 
Number of rows = 5 
e_id	e_nm	e_sal	e_age	e_gen	e_dept	e_dept_role	e_sup
1	Michael	32000	29	Male	Sales&Marketing	Team	102
2	Louis	36000	29	Male	Development	Team	103
5	Aisha	42000	29	Female	Accounts	Team	105
7	Emily	33000	30	Female	Sales&Marketing	Team	102
102	Tom	98000	28	Male	Sales&Marketing	S&M Head	101
*/
--YOUR QUERY BELOW

select * from employee where e_age between 25 and 30;
-- alternate
SELECT * FROM employee WHERE (e_age>25 AND e_age<30);


/* Q2
FIND OUT DEPARTMENTS WHERE AVG SALARY IS MORE THAN 47K
SHOW IN DESCENDING ORDER OF THE AMOUNT

rows = 3 
e_dept	Dept_AvgSal
Management	108000
Sales&Marketing	51250
Accounts	49000

*/
-- YOUR QUERY BELOW
select e_dept, avg(e_sal) Dept_AvgSal 
from employee 
group by e_dept 
having avg(e_sal)>47000 
order by avg(e_sal) desc


/* Q3
find employee and their department, location

Number of rows = 18
e_nm	e_dept	d_loc
Michael	Sales&Marketing	Chicago
Louis	Development	Boston
Sam	Operations	Boston
Julie	Operations	Boston
Aisha	Accounts	Chicago
Josh	Operations	Boston
Emily	Sales&Marketing	Chicago
Rachel	Development	Boston
Roby	Development	Boston
Josh	Accounts	Chicago
Chris	Operations	Boston
Susan	Sales&Marketing	Chicago
Kate	Development	Boston
Rockee	Management	Santa Clara
Tom	Sales&Marketing	Chicago
Anne	Development	Boston
Andy	Operations	Boston
Bob	Accounts	Chicago
*/

-- YOUR QUERY BELOW
select e.e_nm,e.e_dept,d.d_loc 
from employee e  
join dept d 
on e.e_dept=d.d_nm;



/* Q4
find number of employees tagged to EACH department in the organization

Number of rows = 7
d_nm	Dept_EmpCount
Accounts	3
Content	0
Design	0
Development	5
Management	1
Operations	5
Sales&Marketing	4
*/
-- YOUR QUERY BELOW
select dept.d_nm, count(e_id) Dept_EmpCount 
from dept left join employee 
on d_nm=e_dept 
group by dept.d_nm 

--select dept.d_nm, count(e_id) from dept join employee on d_nm=e_dept group by dept.d_nm 


/* Q5.
NOW A NEW EMPLOYEE IS RECRUITED, BUT YET TO BE ASSIGNED ANY DEPARTMENT..*/
insert into employee values(14,'Cecily',10000,24,'Female','','',0);

/* Q6.
Enlist ALL EMPLOYEES ACROSS ALL DEPARTMENTS
Number of Rows = 21
d_nm	e_nm
NULL	Cecily
Accounts	Aisha
Accounts	Bob
Accounts	Josh
Content	NULL
Design	NULL
Development	Anne
Development	Kate
Development	Louis
Development	Rachel
Development	Roby
Management	Rockee
Operations	Andy
Operations	Chris
Operations	Josh
Operations	Julie
Operations	Sam
Sales&Marketing	Emily
Sales&Marketing	Michael
Sales&Marketing	Susan
Sales&Marketing	Tom

*/

-- YOUR QUERY BELOW
SELECT dept.d_nm, employee.e_nm  FROM employee
FULL OUTER JOIN dept ON employee.e_dept = dept.d_nm
order by dept.d_nm, employee.e_nm

