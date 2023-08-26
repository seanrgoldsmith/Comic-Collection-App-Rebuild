-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER comic_collection_db_owner
WITH PASSWORD 'ccdb_owner';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO comic_collection_db_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO comic_collection_db_owner;

CREATE USER comic_collection_db_appuser
WITH PASSWORD 'ccdb_appuser';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO comic_collection_db_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO comic_collection_db_appuser;
