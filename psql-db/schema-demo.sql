DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_namespace WHERE nspname = 'demo'
    ) THEN
        EXECUTE 'CREATE SCHEMA demo';
    END IF;
END
$$;