CREATE TABLE IF NOT EXISTS auditlog(
    id SERIAL PRIMARY KEY NOT NULL,
    user_id INT NOT NULL,
    creation_time timestamp NOT NULL DEFAULT now(),     -- Время создания записи о пользователе
    creator text NOT NULL,
    CONSTRAINT fk_user_id
        FOREIGN KEY (user_id) 
            REFERENCES users(user_id)
    );