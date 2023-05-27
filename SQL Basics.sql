-- BASIC SQL OPERATIONS 

/*	CREATE AND USE DATABASE

	1)	create database sql_db;

	2)	use sql_db;

*/

/*  DELETE DATABASE  

	1)	drop database sql_db;

	2)	drop schema sql_db;  -- Schema is similar to database 

	3)	drop schema if exists sql_db;

*/

/* TABLE OPERATIONS
	
    1)	show tables;
  
	2)	create table students(
			id int primary key,
			name varchar(15),
			gpa double(3,1)
		);

	3)	describe students;   -- Used to describe the students table structure and datatypes  
    
    4)	alter table students add column city varchar(5);   -- add new column to the table
    
    5)	alter table students drop column city;   -- remove column from the table

*/

/*		RECORD MANIPULATION

	1)	insert into students values(1,"Vasudevan",8.1);	 -- Insert Signle new record to the table

	2)	insert into students values (2,"Udhayakumar",7.5),	-- Insert Multiple Record  
									(3,"Naveen",6.3),
									(4,"Ajay",8.6),
                                    (5,"Alwin",6.7) ;

	3)	insert into students (id,name)		-- Insert Specific Records in specific columns 
		values (6,"Krish");

	4)	select * from students;		-- display all the records from table

	5)	select * from students;		-- display specific column records from table

*/

/*  WHERE CLAUSE  --> Filter records based on condition

	// Refer Customer Table from Test_db for the below Queries
	
    1)	 select * from customer c where CUST_NAME = 'cook' ;   ---> Get Record based on name
    
    2)   select * from customer c where CUST_COUNTRY <> 'India' ;   ---> Not Equal to
    
    3)   select *  from customer c where grade > 2 ;    ----> Greater Than
    
    4)   select *  from customer c where grade < 2 ;	----> Less Than
    
    5)	 select *  from customer c where grade >= 2 and CUST_COUNTRY = 'india' ;    ---->  AND Operation	

	6)	select *  from customer c where cust_city  = "chennai" or cust_city ="mumbai"  ;    --->  OR Operation
    
    7)	select *  from customer c where cust_city IN ("chennai" ,"mumbai");  --->  OR , IN Operation

	8)	select *  from customer c where cust_country NOT IN ("india" ,"uk","usa");  --->  NOT IN Operation

	9) 	select *  from customer limit 5 ;		----> 	Limit Operation 
    
    10)	select *  from customer where OPENING_AMT between 6000 and 7000;  ---->	BETWEEN Operation
    
 */
  
 /*		PATTERN FILTERING
	 --    LIKE  
     --	   WILDCARDS (i) -> [  		%   Zero or More Characters 	]
					 (ii)-> [		_   One Characters 				]
	
	1)	select *  from customer where cust_city like 'c%';  ---> Filter records where city starts with 'c'
    
    2)	select *  from customer where cust_city not like 'c%';  --->  Reverse of above one
    
    3)	select *  from customer where cust_city like '%mb%';   --->  inbetween Eg : [Mu 'mb' ai] //mumbai	
 
	4)	select *  from customer where 
		working_area like '__n%';   ---->	where this colmn data start with 3rd position -> n 
        
	5)	select *  from customer where 
		working_area like '__n\%';   ----> search % as character with n like (n%) 	 
 
 */
 
 /*		UPDATE and DELETE  RECORD  -->  Need to Disable SAFE UPDATE MODE
 
	1)	update customer set cust_name  = "Luffy" where grade = 0;	--> Update the data based on condition
 
	2)	delete from customer grade = 0;
    
 */
 
 /*		DISTINCT (Unique) and ORDER BY (Sort) --> Operations
 
	1)	select distinct cust_country from customer;		--> GET Unique Records
    
    2)	select * from customer order by cust_city;		---->   Sort Records By City - ascending order by Default
 
	3)	select * from customer order by cust_city desc;		---> Sort By descending order
    
    4)	select * from customer order by grade,cust_city ;	---> With More Parameter
    
    5)	select * from customer where cust_country = 'india' 
		order by grade,cust_city ;							--->  With where condition
	
	6)	select * from customer 					-->		Order Records By CASE similar to Switch Case
		order by (CASE cust_country						
		when 'india' then 1
		when 'usa' then 2
		when 'australia' then 3
		when 'uk' then 4
		else 0 end
		);

 */
 
/*		FUNCTIONS --> Perform a Specific Task
		Aggregate Functions --> Math Functions  --> Most Commonly Used
 
	1)	select avg(payment_amt) from customer where cust_city = 'chennai';		  //   FInd Average 
    
    2)	select count(payment_amt) from customer where cust_city = 'chennai';  //   Find Count By Specific Column
		select count(*) from customer ;										   //   Find Count By All Column				
 
	3)	select sum(payment_amt) from customer where cust_city = 'chennai';	  //  find Sum of payment_amount
    
    4)	select max(payment_amt) from customer where cust_country = 'india';		// Maximum
    
    5)	select max(payment_amt) from customer where cust_country = 'india';		// Minimum
    
 */
 
 /*			String Functions
 
	1)	select UCASE(CUST_CITY) from customer where cust_country = 'india';		//  UpperCase
    
    2)	select LCASE(CUST_CITY) from customer where cust_country = 'india';		//  LowerCase
 
	3)	select cust_country country ,								// Char Length and Alias Name
		char_length(cust_country) city_count from customer;
    
    4)	select cust_country , cust_city , 							// Concartination - String Join
		concat(cust_country," - ",cust_city) 'Country - City' 
        from customer where cust_country = 'india';
        
	5)	select cust_country Country ,						//	Format Function - add comma seperation
		format(OPENING_AMT,2) Amount							and decimal points in parameter
		from customer where cust_country = 'india'; 
    
 */
 
 /* DATE AND DATE FUNCTION IN SQL
 
	1)	alter table customer add created_at date;			// Add Date Column and Insert Date
		update customer set  created_at = "2023-12-10" ;
 
	2)	select  now() "TimeStamp";		 ==>	Get Current Date and Time
		select date(now()) "Date";		 ==>	Get Current Date from now Function
		select time(now()) "Time";		 ==>	Get Current TIme from now Function
	
    3)	select curdate() Correct_Date_Format;	==> Directly get Current Date 
    
	4)	Timestamp use to get the current system time at that moment
    
    5)	select date_format(curdate(),'%D/%M/%Y') "Date";	// use lowercase m , y , d for different format
    
    6) 	select datediff(curdate(),"2023-04-01");		// Date Difference B/W	current date and param date 
    
    7)	select date_add(curdate(), interval 1 week) as "After One Week Date" ;	// It will show after 1 week date  	
    
 */
 
 /*		GROUP BY and HAVING 
 
	---> Where is used to filter rows and columns
    ---> Having is used to filter Groups
 
	1)	EXAMPLE 1:	
			select WORKING_AREA , avg(OPENING_AMT) as "Average Amt" 	// Group By Working area and 
			from customer group by working_area;							find its average amount 
	
		EXAMPLE 2:	
			select grade , avg(OPENING_AMT) as "Average Amt" 
            from customer group by grade;
    
    2)	select working_area , count(cust_code) from customer 		//	Group By Working area and 
		group by working_area;											find its count of customer	
    
    
	3)	select working_area , count(cust_code) from customer 	// 		Group By Working area and 
		group by working_area having count(cust_code) >3;				find its count of customer
																		and Filter by Condition
                                                                        
	4)	select working_area , count(cust_code) from customer 		//  similar to previous one
		where opening_amt > 7000 group by working_area					with filter by salary(opening_amt) 
		having count(cust_code) <3;									    column 	
		
 */
 
 /*		CONSTRAINTS
 
 // Refer Employee Table from Test_db for the below Queries
 
	1)	create table employee(
			id	int primary key auto_increment,			-- // auto_increment 
			name varchar(30) not null,					-- // not null	
			job varchar(30) default 'Unassigned',		-- // default 	
			salary int check(salary > 1000),			-- // check
			pancard varchar(10) unique 					-- // unique
		);
	
    2)	alter table employee						//  Add constraint to Existing table
		modify name varchar(30) not null;
        
	3)	alter table employee						//  Remove not null constraint from Existing table
		modify name varchar(30);
        
	4)	alter table employee						//  Add default constraint to Existing table
		alter pancard set default "######" ;					
    
    5)	alter table employee						//  Remove default constraint from Existing table
		alter pancard drop default ;					
 
	6)	alter table employee						//  Add check constraint to Existing table
		add check(salary > 10000);
        
	7)	alter table employee								//  Add check constraint and giving name to 
		add constrain chk_salary check(salary > 10000);			Existing table's column
        
	8)	alter table employee						//  remove check constraint from Existing table
		frop check chk_salary;
        
 */
 
 /*		FOREIGN KEY
 
	1)	TABLE Relationship - Primary Key - Foreign Key
    
		create table branch(											# TABLE 1
			branch_id int primary key auto_increment,
			branch_name varchar(30) not null,
			address varchar(100)
		);

		create table employee(											# TABLE 2
			id	int primary key auto_increment,			
			name varchar(30) ,					
			job varchar(30) ,		
			salary int ,			
			branch_id int,
			constraint fk_branch_id foreign key(branch_id) references branch(branch_id)
		);
        
	--->	(1)  This branch table will not be deleted becoz it has a relation with employee table 
				 if we delete the branch table it will show error.
			(2)  But We can delete employee table first and then delete branch table 
				 it will not show any error
			(3)	 alter table branch				  ///  already employee table has a relation with branch
				 add constraint fk_manager_id 			table
                 foreign key(manager_id) 		  ///  Now Branch table will have a relation with employee tbale		
                 references employee1(id);				by using this query

	2)	alter table employee1					//	Remove Foreign Key Relation from this table
		drop foreign key fk_branch_id;
 
	3)	alter table employee1					//	Add Foreign Key Relation to this table
		add constraint fk_branch_id 
        foreign key(branch_id) 
        references branch(branch_id);
 
 */
 
 /*		INDEX ----> Indexing 
		
        // Indexing used for searching 
			By default it will take indexing column like PRIMARY KEY , FOREIGN KEY and UNIQUE Columns 
        
	1)	show index from employee1						// Show Index columns in employee1 table
	
    2)	create index name_index on employee1(name);		// Add Index column in employee1 table
	
    3)	alter table employee1							// Remove index (index_name) from employee tbale
		drop index name_index
	
    3)	alter table employee1							// add index (index_name) to employee tbale
		add index name_index
 
 */
 
 /*		-----   INSERT SCRIPT FOR EMPLOYEE1 AND BRANCH TABLE ------
 
INSERT INTO branch VALUES(1,"Chennai","16 ABC Road");
INSERT INTO branch VALUES(2,"Coimbatore","120 15th Block");
INSERT INTO branch VALUES(3,"Mumbai","25 XYZ Road");
INSERT INTO branch VALUES(4,"Hydrabad","32 10th Street");

INSERT INTO employee1 VALUES(1,'Ram','ADMIN',1000000,2);
INSERT INTO employee1 VALUES(2,'Harini','MANAGER',2500000,2);
INSERT INTO employee1 VALUES(3,'George','SALES',2000000,1);
INSERT INTO employee1 VALUES(4,'Ramya','SALES',1300000,2);
INSERT INTO employee1 VALUES(5,'Meena','HR',2000000,3);
INSERT INTO employee1 VALUES(6,'Ashok','MANAGER',3000000,1);
INSERT INTO employee1 VALUES(7,'Abdul','HR',2000000,1);
INSERT INTO employee1 VALUES(8,'Ramya','ENGINEER',1000000,2);
INSERT INTO employee1 VALUES(9,'Raghu','CEO',8000000,3);
INSERT INTO employee1 VALUES(10,'Arvind','MANAGER',2800000,3);
INSERT INTO employee1 VALUES(11,'Akshay','ENGINEER',1000000,1);
INSERT INTO employee1 VALUES(12,'John','ADMIN',2200000,1);
INSERT INTO employee1 VALUES(13,'Abinaya','ENGINEER',2100000,2);
INSERT INTO employee1 VALUES(14,'Vidya','ADMIN',2200000,NULL);
INSERT INTO employee1 VALUES(15,'Ranjani','ENGINEER',2100000,NULL);
 
 */
 
 /*		On Delete   --->   CASCADE or SET NULL
 
		---> CASCADE  - Used when both table's connected records need to be delete  when delete one table's data.
        ---> SET NULL - Used when both table's connected records need not to be delete when delete one table's data.
 
	1)	alter table employee1				
		add constraint fk_branch_id 
		foreign key(branch_id) 
		references branch(branch_id)
		on delete cascade ;
 
 */
 
 /*		JOINS		---->	LEFT , RIGHT , INNER ,FULL JOIN
 
	i)	INNER JOIN ->	Display the result -> which only satisfy the conditions -> Perfect Match 
   ii)	FUll JOIN  ->	Display the result -> which only satisfy the conditions -> left and right table extra rows
  iii)	LEFT JOIN  ->	Display the result -> Perfect Match condition + left table extra rows
   iv)	RIGHT JOIN ->	Display the result -> Perfect Match condition + right table extra rows
	v)	CROSS JOIN ->	Map left table's single record to right tables all records (MOSTLY NOT USED)
 
 ///	INNER JOIN 
 
	1)	select e.id , e.name, e.job,e.salary , b.branch_id, b.branch_name , address 
		from employee1 
		inner join branch b
		on b.branch_id = e.branch_id					---> Condition
		order by id;

 ///	FULL JOIN  = > LEFT JOIN + RIGHT JOIN
 
	2)	select e.id , e.name, e.job,e.salary , b.branch_id, b.branch_name , address 	// LEFT JOIN
		from employee1 e
		left join branch b
		on b.branch_id = e.branch_id
		union																							
		select e.id , e.name, e.job,e.salary , b.branch_id, b.branch_name , address     // RIGHT JOIN
		from employee1 e
		right join branch b
		on b.branch_id = e.branch_id;
        
 ///	LEFT JOIN 

	3)	select e.id , e.name, e.job,e.salary , b.branch_id, b.branch_name , address 
		from employee1 
		left join branch b
		on b.branch_id = e.branch_id;					---> Condition
        
 ///	RIGHT JOIN 
        
	4)	select e.id , e.name, e.job,e.salary , b.branch_id, b.branch_name , address 
		from employee1 
		right join branch b
		on b.branch_id = e.branch_id;					---> Condition

	5)  select b.branch_name, count(e.id) as COUNT_OF_EMPLOYEE		///  JOIN OPERATION WITH GROUP
		from branch b
		join employee1 e
		on b.branch_id =e.branch_id
		group by e.branch_id;

 ///	UNION and UNION ALL
 
    6)	select * from branch	
		union 							-->	JOIN 2 Tbale Vertically without duplicate records
		select * from client;

	7)	select * from branch                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		union all						-->	JOIN 2 Tbale Vertically with duplicate records
		select * from client;

 */	
 
 /*		SUB QUERIES	,	EXISTS	, ALL	, ANY	, OFFSET
 
	1)	select * from employee1												--->   Employee from chennai Branch
		where branch_id = (											
			select branch_id from branch where branch_name = "Chennai"		--->   Sub Query
		);
 
	2)	select * from employee1 											--->	 Employee with Min Salary					
		where salary = (		
			SELECT min(salary) FROM EMPLOYEE1								--->	Sub Query
		);
 
	3)	select branch_id , branch_name from branch b		//// EXISTS used with sub query
		where exists(												
			select * from employee1 e							 --->	Branches containg atleast one ADMIN.			
			where job = "ADMIN" and b.branch_id =e.branch_id
		);
        
	4)	select * from branch 						////	Branches which has sales jobs
		where branch_id = any (										ANY KEYWORD
			select branch_id from employee1
			where job = "SALES"
		);
        
	5)	select * from employee1 						///	Employees not working in Mumbai and Hydrabad
		where branch_id <> all(											ALL KEYWORK
			select branch_id from branch
			where branch_name in ("Mumbai","Hydrabad")
		);
	
    6)	select salary "2nd Highest Salary" from employee1 		////  Offset - use to specify which row we want
		order by salary desc													to retrive data from
		limit 1 offset 1;
 
 */
 
 /*		VIEW	--->	View is creating a varible for a query and use that varible name next 
						time if we want to use instead of rewriting that query.
                        
		///	CREATE A VIEW
        
        1)	create view joined_emp_br
			as
			select e.id,e.name,e.job,e.salary,b.branch_name,b.address 
			from employee1 e 
			inner join branch b
			on e.branch_id = b.branch_id
			order by id;

		////	USE VIEW
        
        2)	select * from joined_emp_br
			order by salary;
 
		////	ALTER VIEW
        
        3)	create or replace view emp_br
			as
			select e.id,e.name,e.job,e.salary,b.branch_name,b.address 
			from employee1 e 
			inner join branch b
			on e.branch_id = b.branch_id;

		////	DROP VIEW
        
        4)	drop view emp_br;

 */
