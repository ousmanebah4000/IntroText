SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


-- <<< QUESTION SEPARATOR LINE, DON'T REMOVE >>> -- Q2
-- ## Question 2: Earliest Assignment Due Date
SELECT min(due_date)
FROM assignments;

-- <<< QUESTION SEPARATOR LINE, DON'T REMOVE >>> -- Q3
-- ## Question 3: Latest Assignment Due Date
SELECT max(due_date)
FROM assignments;

-- <<< QUESTION SEPARATOR LINE, DON'T REMOVE >>> -- Q4
-- ## Question 4: Assignments Due on a Specific Date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- <<< QUESTION SEPARATOR LINE, DON'T REMOVE >>> -- Q5
-- ## Question 5: Find All Assignments Due in October
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

-- <<< QUESTION SEPARATOR LINE, DON'T REMOVE >>> -- Q6
-- ## Question 6: Find the Most Recent Completed Assignment
SELECT max(due_date)
FROM assignments
WHERE status = 'Completed';

-- <<< QUESTION SEPARATOR LINE, DON'T REMOVE >>> -- Q7
-- ## Question 7: Count of "Not Started" Assignments
SELECT COUNT()
FROM assignments
WHERE status = 'Not Started';

-- <<< QUESTION SEPARATOR LINE, DON'T REMOVE >>> -- Q8
-- ## Question 8: Find Courses with Labs on Tuesday
SELECT course_id, course_name
FROM courses
WHERE lab_time  like 'Tue%';
