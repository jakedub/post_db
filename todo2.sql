-- Commented out to run rest of select statements
-- INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
--   ('I am completed', 'I like being completed', 4, now(), now()),
--   ('Newly completed yo!', 'Did you know I was completed?', 20, now(), now()),
--   ('I like Nic Cage movies', 'Even though I have not seen a huge amount', 7, now(), now()),
--   ('I am going for five completed', 'I am almost there', 4, now(), now()),
--   ('Fifth completed here!', 'I completed the fifth completed', 5, now(), now());
--
--   INSERT INTO todos (title, details, priority) VALUES
--     ('Only fifteen to go', '15 left', 1),
--     ('Only fourteen to go', '14 left', 2),
--     ('Only thirteen to go', '13 left', 3),
--     ('Only twelve to go', '12 left', 4),
--     ('Only eleven to go', '11 left', 5),
--     ('Only ten to go', '10 left', 6),
--     ('Only nine to go', '9 left', 7),
--     ('Only eight to go', '8 left', 8),
--     ('Only seven to go', '7 left', 9),
--     ('Only six to go', '6 left', 10),
--     ('Only five to go', '5 left', 11),
--     ('Only four to go', '4 left', 12),
--     ('Only three to go', '3 left', 13),
--     ('Only two to go', '2 left', 14),
--     ('Only one to go', '1 left', 15);

-- Write a SELECT statement to find all incomplete todos with priority 3. NOTE Completed
SELECT * FROM todos WHERE completed_at IS NULL AND priority = 3;

-- Write a SELECT statement to find the number of incomplete todos by priority. NOTE Completed
SELECT COUNT(completed_at), priority
FROM todos
WHERE completed_at IS NULL
GROUP BY priority;
-- Write a SELECT statement to find the number of todos by priority created in the last 30 days.
SELECT COUNT(priority)
FROM todos
WHERE created_at < '2017/08/30'
AND created_at > '2017/07/30';
-- Write a SELECT statement to find the next todo you should work on. This is the todo with the highest priority that was created first. NOTE Completed
SELECT MIN(created_at), priority
FROM todos
WHERE completed_at IS NULL
GROUP BY created_at, priority
ORDER BY priority DESC
LIMIT 1;
