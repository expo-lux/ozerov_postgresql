create or replace function fnc_auditlog_users_insert()
returns trigger as $$
begin
raise notice 'old %', old;
raise notice 'new %', new;
-- old в случае insert - null
-- new это новая строка 
-- user - встроенная переменная, содержит имя юзера который выполнял insert
INSERT INTO auditlog(user_id, creation_time, creator) VALUES (new.user_id, now()::timestamp, user);
return new;
end;
$$ language plpgsql;
