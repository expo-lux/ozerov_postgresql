CREATE TABLE IF NOT EXISTS users(
    user_id SERIAL PRIMARY KEY NOT NULL,             -- Primary Key
    username varchar(50) NOT NULL,                   -- Имя пользователя
    email varchar(50) NOT NULL,                      -- Электронная почта
    mobile_phone varchar(12) NOT NULL,               -- Номер телефона
    firstname TEXT NOT NULL,                         -- Имя
    lastname TEXT NOT NULL,                          -- Фамилия
    city  TEXT,                                      -- Название города
    is_curator boolean NOT NULL,                     -- Является ли пользователь куратором
    record_date timestamp NOT NULL DEFAULT now()     -- Время создания записи о пользователе
    );