-- createdb 'expenses'
-- psql -d expenses < schema.sql
-- CREATE TABLE

-- CREATE TABLE expenses (
--     id serial PRIMARY KEY,
--     amount numeric(6,2) NOT NULL,
--     memo varchar(100) NOT NULL,
--     created_on date NOT NULL
-- );
-- ALTER TABLE expenses
--     ADD CONSTRAINT amount_positive CHECK(amount >= 0.01);

-- INSERT INTO expenses (amount, memo, created_on)
--     VALUES (-1.99, 'test', '1999-01-08');


-- INSERT INTO expenses (amount, memo, created_on)
--     VALUES (14.56, 'Pencils', NOW()),
--            (3.29, 'Coffee', NOW()),
--            (49.99, 'Text Editor', NOW());

-- SELECT * FROM expenses;