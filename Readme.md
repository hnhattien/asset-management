# HOW TO START THIS PROJECT

- Step 1: 
-- Run `pnpm install`
- Step 2:
-- Run `docker compose up postgres_asset_managment_server -d`
- Step 3: 
-- Please go into following postgresql connection url to create a database named `asset_management`. Sorry so this inconvenient, sometime /docker-entrypoint-initdb.d/init_sql.sql not working as expected.
- Step 4:
-- Run `./migrate_up.sh`
- Step 5:
- Run `docker compose up asset_management`

