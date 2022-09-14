-- create table
CREATE TABLE test_table_2(
    column_1 SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    surname VARCHAR(50),
    date_of_birth DATE
);

--insert data into table
INSERT INTO test_table_2(first_name, surname, date_of_birth) 
    VALUES 
    ('John', 'Doe', '2022-01-01'),
    ('Mary', 'Doe', '2022-01-02');
