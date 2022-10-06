CREATE TABLE IF NOT EXISTS blog(
    id SERIAL PRIMARY KEY NOT NULL,     -- Primary Key
    user_id INT NOT NULL,               -- Foreign Key to table users 
    blog_text TEXT NOT NULL,
    CONSTRAINT fk_user_id
        FOREIGN KEY (user_id) 
            REFERENCES users(user_id)
    );