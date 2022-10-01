CREATE TABLE IF NOT EXISTS courses(
    course_id SERIAL PRIMARY KEY NOT NULL,  -- Primary Key
    coursename varchar(50) NOT NULL,        -- Название практикума
    tasks_count INT NOT NULL,               -- Количество заданий в практикуме
    price INT NOT NULL                      -- Цена практикума
    );