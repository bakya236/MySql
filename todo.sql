USE todos;
SHOW TABLES;
-- -- todos due tomorrow
-- SELECT *
-- FROM todos
-- WHERE dueDate = '2023-02-17';

-- -- todos order by dueDate

-- SELECT *
-- FROM todos
-- ORDER BY dueDate ;

-- -- find all tasks that contain 'dry'

-- SELECT *
-- FROM todos
-- WHERE task LIKE "%dry%";

-- -- find all tasks due from next week onwards (From 20-2 onwards)

-- SELECT task
-- FROM todos
-- WHERE dueDate >= '2023-02-20';

-- -- find all tasks due in the next week (20-2 to 24-02) 

-- SELECT *
-- FROM todos
-- WHERE dueDate between ("2023-02-20","2023-02-24");

-- -- find all tasks due on 2023-02-17, 2023-02-24, 2023-03-03

-- SELECT task
-- FROM todos
-- WHERE dueDate IN  ('2023-02-17', '2023-02-24', '2023-03-03');


-- -- Medium
-- -- todos order by dueDate and for each dueDate, order by task alphabetically in ascending order 
-- SELECT *
-- FROM todos
-- WHERE task regexp ('^buy','shoes$') ;

-- -- todos starting with Buy and ending with shoes
-- SELECT *
-- FROM todos
-- WHERE task LIKE '%buy' AND task LIKE 'shoes%';

-- -- Requires Internet reference
-- -- Display the count of todos in the database

-- -- Hard
-- -- Find the task with the last due date

-- -- Display the days left for 'Buy groceries' task

USE TODOS;
SELECT task , length(task)
FROM todos
WHERE length(task) = (SELECT min(length(task)) FROM TODOS) and (SELECT max(length(task)) FROM TODOS) ;



select max(length(task)) as minlength 
from todos;
select min(length(task)) as maxlength 
from todos;



