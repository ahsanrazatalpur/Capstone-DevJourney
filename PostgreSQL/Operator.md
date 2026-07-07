CLAUSE  : 

   - Where (used to target specific data)
   - Distinct 
   - Order By
   - Limit 
   - Like 


   Here we can use Relational  operator too
   salary > 5000
   salary < 8000


   <
   >
   <=
   >=
   =
   !=
   
   
   Here we can use Logical  operator too
   name WHERE dept = 'BBA' or "CS"
   name WHERE dept = 'BBA' and "CS"

   and  Both
   or   Atleast one
   not  NOt that value


   In  -- mtlab in sab mn 
   jese dept = 'Hr' or dept = 'BBA' ese shorthand
   IN dept In('Hr', 'BBA');



   Salary BETWEEN 4000 and 6000

   

   DISTINCT  -- Unique value
   eg:
   SELECT DISTINCT name from employee;
   

   ORDER BY  
   SELECT name FROM employee ORDER BY fname;

   ASC 
   DESC  // decending order
   SELECT name FROM employee ORDER BY fname DESC;



   Limit 3    // only show  3 table 

   LIKE 'A%' name start from A
   LIKE '%A' name end with A
   LIKE '%a%' name with atleast one a
   LIKE '__' name with 2 char
   LIKE '_a%' name start with any letter and then a then any letter and limit
