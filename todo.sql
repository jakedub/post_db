-- -- Drops table to prevent overwriting
DROP TABLE todos;

--Creates the table
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(500) NULL,
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at TIMESTAMP DEFAULT now() NOT NULL,
  completed_at TIMESTAMP NULL
);

-- --Insertions
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
  ('Completed Title', 'Here are the deets for the completed', 2, now(), now());

INSERT INTO todos (title, details, priority, created_at) VALUES
  ('New Title', 'New Details', 6, now()),
  ('Newer Title', 'Newer Details', 1, now()),
  ('Newest Title', 'Newest Details', 9, now()),
  ('Most New Title', 'Most New Details', 2000, now());
--
-- -- Select to find all incomplete todos
SELECT * FROM todos WHERE completed_at IS NULL;
--
-- -- Select to find all todos with a priority above 1
SELECT * FROM todos WHERE priority > 1;
-- -- Update to complete one todo by id.
UPDATE todos SET completed_at = NOW() WHERE id = 4;
-- -- Delete statement to delete all completed todos
DELETE FROM todos WHERE completed_at IS NOT NULL;
