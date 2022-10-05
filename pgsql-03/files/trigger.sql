DROP TRIGGER IF EXISTS insert_into_users_trigger
  ON users;
CREATE TRIGGER insert_into_users_trigger
    AFTER INSERT ON users
    FOR EACH ROW
    EXECUTE FUNCTION fnc_auditlog_users_insert();