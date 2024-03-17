use hr ;
select employee_id ,
	  first_name , 
      last_name
      from employees;
      select * from employees ;
      # task 1
 # the Hr manager needs all the info from the Departments table 
 select *   from departments;
      # task 2 
 # hr manager needs first name , last name , phone number from employees 
 select first_name ,
         last_name ,
         phone_number 
         from employees ;
     
     # task 3
# tthe hr manager needs the names and department id of all the employees 
	 
 select first_name ,
		department_id 
        from employees;
      
     #task 4 
#The HR Manager needs all the informantion that includes an employees first name , las tname , hire date 
     
     select first_name ,
            last_name ,
            hire_date 
            from employees ;
            
 #      the hr manager needs all the records from the jobs table 
          # task - 5 
       select * from jobs ;   
       
       # task 6
 #  he wants department_id and department name 
 
 select department_id , 
        department_name 
        from departments ;
        
        # task 7 
  # he needs job id , max and min salary 
  
  select job_id , 
		 min_salary ,
         max_salary
         from jobs ;
         
     # task 8 
   select distinct (job_id )from employees ; 
   
   select * 
		from employees 
        where salary > 6000 and department_id = 60;
          
    # task 1 where clause 
    # hr wants to understand the diffrent roles of all the employees 
    
    select (job_id) , first_name 
    from employees ;
    
    # hr wants to understand the diffrent departemnts 
      # Task 2 
      select department_name from departments ;
      
      #  taslk 3 
      # the hr manager nee to know about the salary of employee 120
      
      select salary ,
               employee_id ,
               first_name,
               last_name 
              from employees 
              where employee_id = 120 ;
              
        # task 4 
        # Hr manager needs to know the first name , job id, salary for all the employees who earn ssalaryless than or equa lto 1000 monthy 
        
        select first_name ,
				job_id , 
                salary 
                from employees 
                where salary <= 10000 ;
             
       # task 5
       # hr manager wants to know all the info for stock clerks 
       
       select * from employees 
       where job_id = "ST_clerk ";
       
       # task 6 
       # hr manager needs to know how many job_id ar there and their min_max salary  ...alos he needs this 
       # where min salary is greater than 5000
       
select * 
      from  employees 
      order by first_name desc  ;
-------------------------------------------------------------------------------------   
   # task 1
   # Hr manager asked you to provide him with the info about emp who reports to the maanager 114
   
   select *
           from employees 
           where manager_id = 114 
           order by manager_id ;
           
    # task 2
    # Hr manager needs first name last name ,department_id of employees do not get commisdion and display las tnames in alphabetical order 
    
    select first_name ,
		   last_name ,
           department_id ,
           commission_pct
           from employees 
           where commission_pct is not null 
           order by last_name ;
     # task 3 
     # hr want info about the employees who dont have a manager 
     
     select * 
            from employees 
            where manager_id is null ;
            
        # task 4 
        # hr wants to find out which departments do not have a manager 
        
        select department_name ,
               manager_id
               from departments
               where manager_id is null ;
               
        # task 5
        # hr wants all info for it prog showing highest paid employee om top 
        
        select * 
              from employees
              where job_id = "IT_PROG"
              order by salary desc ;
              
         # task 6 
         # hr wants to know all employee who were hired on june 17th 1987
         
         select *
                from employees
                where hire_date = " 1987-06-17";
      -------------------------------------------------------------------------------------------------------
      
      # Task 1 
      # hr manager needs the first name , salary and job id of employees who earn more than or equal to 4000 or working a it programmers 
      
      select first_name ,
			salary , 
			Job_id
            from employees
            where salary >= 4000 or
                  job_id = "IT_PROG";
                  
       # task 2 
       # hr want first name , salary & job id of employees who earn more than 3000 & they work as stock clerk .Also he needs to see returned data sorted by name 
       
       select first_name ,
		       salary ,
               job_id 
               from employees
               where salary >=3000 and
                         job_id = " ST_CLERK" 
                          order by first_name ;
          
          # task 3
          # he tasked you to find all employee who do not work in department 50 and are not stock clerks 
          
          select * from employees
          where department_id != 50 and job_id != "ST_CLERK" ;
          
          # task 4
          # Hr asked you to find out employees who dont ge tcommision and yet their salary is higher than 4500 . sorted by highest paid employees on top .
          
          select * from employees
          where commission_pct is null and salary>= 4500 
          order by salary desc;
          
          # task 5 
          # HTe Hr manager needs all the info on employees who work for Department 50,60,80.alter
		  # IN COMMAND
           select * from employees
           where department_id in (50,60,80); 
            
           # task 6 
           # hr wants employees whose salary is between 5000 and 8000
           # BETWEEN
           select * from employees 
           where salary between 5000 and 8000 ;
            ---------------------------------------------------------------------------------------------------------------------
            
            # Logical Operators 
            # LIKE COMMAND
            # task 1 
            # print all the employee hired after 1st jan 1999
            
            select * from employees
            where hire_date > "1999-01-01" ; 
            
            # task 2 
            # how many positions were filled after the year 2000 
            
            select * from employees
            where hire_date > "2000-01-01";
            
            #task 4 
            # hr needs info who has hired betweem feb of 1997 and march 1997 .sorted in ascending order by name 
            
            select * from employees
           where hire_date between "1997-02-01" and "1997-03-31"
           order by first_name ;
           
           # task 5 
           # he wants empployee whose last word is a 
           
           select * from employees
           where last_name like "a%";
           
           # Task 6
           # he wants to verify all the employees who work for department 100 through 150 
           
           select * from employees
           where department_id between 100 and 150 ;
           
           # task 7 
           # He also needs to verify all the employees who hired from 1 july 1997 to 1 june 2005
           
           select * from employees
           where hire_date between "1997-07-01 " and "2005-06-01" ;
           
           # task 8 
           # He wants the employee id an job roles for all the employees who got hired from 1 june 1999 to 1 april 2000
           # and having salary less than or equal to 5000
           
           select *from employees
                   where hire_date between "1999-06-01" and "2000-04=01"
                   and salary <= 5000 ;
                 
           # task 9 
           # he has tasked you to verify all the employees who are programmers , clerks and hr rep 
           
           select * from employees
           where job_id like "%clerk" or
				 job_id like "%Prog" or
                 job_id like "HR%";
           
           # task 10 
           # he has asked to provide all the info on all the depart names that start with "c" and sort the result by department Id in descending order ;
           
           select * from departments 
           where department_name like "C%"
           order by department_id desc ;
           
           # Task 11 
           # the hr manager needs you to help him find info on all the countries except germany , Italy and Kuwait ;
           
           select * from countries
           where  country_name  not  in ("Germany" ,"Italy","kuwait");
           
           # task 12 
           # he asked info of all employee wheree their last name containing third letter u 
           
           select * from employees
           where last_name like "__u%";
           
           ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
           # Group By 
           # Task 2 
           # What is the count of  distinct job ids? 
           
           select count(distinct(job_id))
           from employees ;
           
           # task 3
           # how many employees are IT programmers 
           
           select count(*) from employees
           where job_id  = 'IT_PROG';
           
           # task 4 
           # How many employees first name start with A 
           
           select count(*) from employees as No_of_emp
           where first_name like "A%" ;
           
           # task 5 
           # Display how many clerks hired by company ? 
           
           select Count(job_id) as No_of_Emp
                 from employees
                  where job_id like "%clerk" ;
                  
			# task 6 
            # What is minimun salary , max salary ,avg salary out of all the employee 
            
            select min(salary) as min_salary,
                   max(salary) as max_salary,
                   round(avg(salary)) as avg_salary
                   from employees ;
                   
             # task 7 
             # Display the last name in uppercase and first name is lowercase 
             
             select upper(first_name) ,
                    lower(last_name)
                    from employees;
             
             # task 8 
             # select min , max , avg salary for each job id 
             
             select min(salary) as min_salary,
                    max(salary) as max_salary,
                    avg(salary) as avg_salary,
                    job_id,
                    count(*) as No_emp
                    from employees
                    group by job_id ;
                    
             # task 9
             # he asked you to find the info about the department_id ,no of people in each department ,avg and max salary 
             
             select department_id ,
                    count(*) as no_of_emp,
                    round(avg(salary)) as avg_salary,
                    round(max(salary)) as max_salary
                    from employees
                    group by department_id ;
             
		    # task 10 
            # Hr wants average salary in each department ? sorted by ascending salary .
            
            select avg(salary) as avg_salary ,
                   department_id
                   from employees
                   group by department_id
                   order by round(avg(salary));
                   
            # task 11
            # hr needs avg salary of all the clerks 
            
            select avg(salary) as avg_salary ,
                    job_id  
                  from employees
                  where job_id like "%clerk"
                  group by job_id ;
                  
           # task 12
           # how many cities are there in each country ?
           
           select count(city) as no_of_cities,
                  country_id
                 from locations 
                 group by country_id ;
                 
           # task 13
           # display avg salary of emp in each department who have commision percentage ?
           
           select  round(avg(salary)) as Avg_sal,
                   department_id 
                   from employees
                   where commission_pct is not null 
                   group by department_id ;
           
           # task 14 
           # display job id , no of emp , sum of salary ,and diff between highest and lowest salary of the employee of the job 
           
           select job_id ,
				  count(*) as No_of_emp,
                  sum(salary) as sum_of_sal,
                  max(salary)-min(salary) as diff_in_sal
                  from employees
                  group by job_id ;
                  
                  
            # task 15 
            # Display employee id and the date on which he ended his previous job ?
            
            select employee_id as emp_id, 
				 max(end_date) as max_end_date
                  from job_history 
                  group by employee_id;
                  
           ---------------------------------------------------------------------------------------------------------------------------------------------------
           # Having Clause 
           # Task 1 
           # The Hr manager needs the average salary for employees per departments where average salary is more than 6500?
           
           select round(avg(salary)) as avg_sal,
                  department_id 
                  from employees
                  group by department_id
                  having avg_sal > 6500 ;
           
           # task 2 
           # the hr manager needs the count of employee in the departments where there are more than the 5 employees ? 
           
           select count(employee_id) as No_of_employee,
                  department_id
                  from employees 
                  group by department_id
                  having No_of_employee >=5 ;
           
           # Task 3 
           # finally ne needs the average salary of people working for department 80 through 120 but
           # he needs to see only those departments where average salary is between 8000 to 10000 ?
           
          select round(avg(salary)) as avg_sal ,
                  department_id 
                  from employees
                  where department_id in (80,120,90,100,110 )
                  group by department_id
                  having avg_sal between "8000" and "10000";
                  
           # task 4
           # Display departments in which more than five employees have commision percentage ? 
           
          select department_id ,
                 count(*) as no_of_emp,
                 avg(commission_pct) as avg_cp 
                 from employees
                 where commission_pct is not null 
                 group by department_id
                 having no_of_emp > 5 ; 
                 
            # task 5 
            # Display employee id , their end date and departmrnt id for employees who did more than one job in the past 
            # Also display no of jobs they had done 
            
            select employee_id,
                   max(end_date) as last_name ,
                   count(employee_id) as no_of_jobs 
                   from job_history
                   group by employee_id 
                   having no_of_jobs > 1;
                   
                   
              # Task 6
              # display the job id and department id for all the jobs which were done by more than two employee and for more than 20 days 
              
              select job_id ,
                count(*) as no_of_employee 
                from job_history
                where year(end_date) - year(start_date) >1 
                group by job_id 
                having no_of_employee > 1 ;
                
      ---------------------------------------------------------------------------------------------------------------------------------------------------------------
      # SUB QUERIES 
      # Task 1 
      # he wants you to count the employees who earns less than average salary ? 
      
      select avg(salary)
            from employees;
               
     select count(employee_id) as No_of_emp 
      from employees 
      where salary < (select avg(salary)
            from employees);
                     
       # task 2 
       # he needs  to  know department name where stevan works 
       
       select distinct (department_id)
             from employees
             where first_name = "Steven";
                     
       select department_name
              from departments
              where department_id in ( select distinct (department_id)
                                              from employees
                                              where first_name = "Steven");
                     
         # Task 3
         # he needs first name , last name , employee id of employees where location id is 1700 
         
         select first_name,
                last_name ,
                employee_id 
                from employees 
                where department_id in (  select department_id
                                            from departments
                                            where location_id = 1700 );
             
            select department_id
               from departments
               where location_id = 1700 ;
            
           # task 4 
           # he wants to know the employees who were  hired after steven king (employee id 100)
           
           select *
                  from employees 
                  where hire_date > (select hire_date
                                     from employees
                                      where employee_id = 100);
            select hire_date
            from employees
            where employee_id = 100 ;
            
            
            # task 5
            # write  a SQL query to find those employees who work as managers 
            # returns complete info about the employees . use sub query
            
            select  distinct (manager_id)
                   from employees ;
                   
           select *
                  from employees
                  where employee_id in (select  distinct (manager_id)
                                          from employees);
            
          # Task 6
          # write a query to find first name last name of all the employees who have manager and worked in a USA based department 
      
      select * 
       from employees
       where department_id in ( select department_id 
                                from departments 
                                where location_id in  ( select distinct location_id
                                                         from locations 
								                         where country_id = "US" )) and 
                                                         manager_id is not null ;
          
								                       
       # Task 7
       # Write a query to find the name ( first name , last name ) and the salary of the employee who earns more than employee whose last name is bell ? 
       
       select salary ,
              first_name ,
              last_name
              from employees
              where last_name like "%bell";
     
          
	   select first_name ,
			last_name,
            salary 
            from employees
            where salary > (  select salary 
                                  from employees
								where last_name like "%bell"); 
                              
            
          # Task 8 
          # Write a query to find the name ( first name , last name ) and the salary of the employee who earns the minimum salary ?
          
          select first_name ,
                 last_name ,
                 salary
                 from employees
                 where salary = ( select min(salary)
                                  from employees);
          
          # task 9 
          # The HR wants to know the third highest salary ? 
          
          select salary 
                 from employees
                 where salary =(  select salary 
                                 from employees
                                 where salary < 17000 and salary > 13500);
   ------------------------------------------------------------------------------------------------------------------------------------------------
   # SET OPERATORS
   # Task 1
        
          select department_id
          from employees
          union
          select department_id 
          from departments ;
          
    # task 2
    # hr wants to compare departments id from employees and from deaprtments table and return the common department id ?
    
         select department_id
		 from employees
		 intersect
		 select department_id 
		 from departments ;
          
		# Task 3 
        # he needs to know the department_id , manager_id from both employee and departments table 
        # we want to get all the manager id and employee id
        
                select 
                  manager_id ,
                  department_id
                  from employees
                  union all 
                  select department_id ,
                  manager_id 
                  from departments ;     
          
          
        # task 4
        # he needs to know the department_id , manager_id from both employee and departments table 
		#  he asked you to remove duplicates and sort them in desc order 
        
         select 
                  manager_id ,
                  department_id
                  from employees
                  union 
                  select department_id ,
                  manager_id 
                  from departments 
                  order by department_id desc,
                           manager_id desc ;
          
          
          # Task 5
          # he wants employee who currently  working for company ?
          
          select employee_id 
          from employees
          except  
          select employee_id 
          from job_history ; 
            
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          # Joins 
          
          select employees.first_name,
                 employees.last_name ,
                 employees.department_id,
                 departments.department_name
                 from employees
                 left join departments	
                 on employees.department_id = departments.department_id;
            
            # task 1
            # display employee_id ,last name ,department name for each employee 
            
            select e.employee_id ,
                   e.last_name ,
                   d.department_name ,
                   e.department_id
                   from employees e
                   left join departments d
                   on e.department_id = d.department_id;
                   
            # task 2 
            # Hr needs the employee_id , last_name , job_id , salary , department_id, departmrnt_name who are IT Programmers ? 
            
            select e.employee_id ,
                   e.last_name ,
                   e.job_id ,
                   e.salary ,
				   d.department_name,
				   d.department_id
                   from employees e 
                   left join departments d
                   on e.department_id=d.department_id
                   where job_id = "IT_PROG";
            
            # task 3
            # he wants employee_id , department name ,department id for departments 60 to 80 ; 
            
            select e.employee_id ,
                   d.department_name ,
                   d.department_id 
                   from employees e 
                   left join departments d 
                   on e.department_id = d.department_id
                   where d.department_id in (60,80); 
            
            # task 4 
		    # he wants employee_id , first name , last name ,department name and city  
		    
            select e.employee_id ,
				   e.first_name ,
                   e.last_name ,
                   d.department_name ,
				   l.city 
                   from employees e 
                   left join departments d 
                   on e.department_id = d.department_id 
                   left join locations l 
                   on d.location_id = l.location_id ;
                   
            # task 4.1
            # he also needs employee_id , department_name , last name , salary 
            # sort rsult based on salary 
            
            select e.employee_id ,
                   e.last_name ,
                   e.salary ,
                   d.department_name 
                   from employees e 
                   left join departments d 
                   on e.department_id = d.department_id 
                   order by salary ; 
        
        # task 1 
        # The Hr manager wants all employee id with their first name ,
        # last name , salary ,department names , cities even if they dont have any department id or city ? 
        
        select employee_id ,
               e.first_name ,
               e.last_name ,
               e.salary ,
               d.department_name ,
               l.city 
               from employees e 
               left join departments d 
               on e.department_id = d.department_id 
               left join locations l
               on l.location_id = d.location_id;
            
            
          # task 2 
          # He needs the name of department that do not have employee ? 
          
          select e.department_id ,
                 d.department_name ,
                 e.employee_id 
                 from departments d
                 left join  employees e
                 on e.department_id = d.department_id 
                 where e.department_id is null ;
           # Task 3
           # He wants to count the no of employees in Each city ?
           
           select count(e.employee_id) as No_of_emp,
				  l.city
                 from employees e
                 left  join departments d
                 on e.department_id = d.department_id
                 left join locations l
                 on d.location_id = l.location_id 
                 group by l.city ;
           
            # Task 4 
            # Write a Query to find the employee_id , name (last name) along with their manager id and name (last name )?
            
            select e.employee_id as emp_id,
                   e.last_name as emp_last_name,
                   m.employee_id  as mgr_id,
                   m.last_name as mgr_last_name 
                   from employees e 
				   join employees m 
                   on e.manager_id= m.employee_id ;
                   
            
            # task 6 
            # Display job title , employee name ,and the diff between salary of the employee and minimum salary for the job ? 
            
        select e.job_id ,
               e.first_name ,
               e.salary-min_salary as Diff_In_salary ,
               j.job_title ,
               e.employee_id 
               from employees e 
               left join jobs j 
               on e.job_id = j.job_id   ;            
                  
           
          #  Task 7
          # Write a query to dsiplay the job history that were done by any employee who is currently drawing more than 10000 of salary ? 
          
          select h.*,
                e.salary
                 from job_history h
                 left join  employees e
                 on e.employee_id = h.employee_id 
                 where salary > 10000 ;
                 
     