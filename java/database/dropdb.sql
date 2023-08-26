-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'comic_collection_db';

DROP DATABASE comic_collection_db;

DROP USER comic_collection_db_owner;
DROP USER comic_collection_db_appuser;
