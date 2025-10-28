DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_namespace WHERE nspname = 'd101'
    ) THEN
        EXECUTE 'CREATE SCHEMA d101';
    END IF;
END
$$;