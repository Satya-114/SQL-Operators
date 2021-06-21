----Arithmetic operators
  select ename , salary+1000 totalsalary from employee1 where empid =101
  select ename , salary-1000 totalsalary from employee1 where empid =101
  select ename , salary*10 totalsalary from employee1 where empid =101
  select ename , salary/10 totalsalary from employee1 where empid =101
  select ename , salary%10 totalsalary from employee1 where empid =101

  ----Logical operators
   select * from Student where slocation='plkl'and stuid = 101
   select * from Student where slocation='plkl' or stuid = 101
   select * from Student where (slocation='plkl' and stuid = 101) or (slocation = 'plkl')
   select * from Student where not slocation='plkl'

   ----comparison operators
   select * from Student where stuid =101
   select * from Student where stuid !=101
   select * from Student where stuid <>101
   select * from Student where stuid >101
   select * from Student where stuid <103
   select * from Student where stuid >=101
   select * from Student where stuid <=102
   select * from Student where stuid !>102
   select * from Student where stuid !<103

   ----Assignment operators
     
   declare @MYVar int =10
   select @MYVar as MyResult
    
	declare @MyVar2 int 
	set @MyVar2 = 20
	select @MyVar2 as MyResult

	select sID = stuid, StudentName = sName from Student
	select * from Student

	----without using compound assignment operators 

	declare @MyVariable int
	set @MyVariable = 10
	set @MyVariable = @MyVariable * 5
	select @MyVariable as MyResult

	----with using compound assignment operators
	declare @MyVariable1 int
	set @MyVariable1 = 10
	set @MyVariable1 *=  5
	select @MyVariable1 as MyResult

	----special operators
	select * from Student where stuid between 101 and 103
	select * from Student where sName in ('joseph', 'kv','rv')_
	select * from Student where sName like 'j%'
	select * from Student where sName is null

	----set operator
	select * from Class_A union select * from Class_B
	select * from Class_A union all select * from Class_B
	select * from Class_A intersect select * from Class_B
	select * from Class_A  except select * from Class_B
	select * from Class_A
	select * from Class_B

	----All operator 
	 select * from Class_A where age >=(select max(age)from Class_B)
	 select * from Class_A where age >= All (select age from Class_B)

	 ----Any operator 
	 select * from Class_A where age >(select min(age)from Class_B)
	 select * from Class_A where age >any (select age from Class_B)

	 ----Some operator
	 select * from Class_A where age >(select min(age) from Class_B)
	 select * from Class_A where age >some (select age from Class_B)

	



