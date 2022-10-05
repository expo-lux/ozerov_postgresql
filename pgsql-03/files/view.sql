CREATE VIEW get_last_10_records_from_auditlog AS
    SELECT * FROM auditlog 
        ORDER BY id asc
            LIMIT 10;