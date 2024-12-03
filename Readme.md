##### Dear Recruiter, because the time to complete the assignment is limited, I try to complete the assignment as soon as possible and ensure that the code can work well, some parts of the assignment may not be really best and optimization. I hope you understand.
##### The files need keep secret but i make it public in order to you run the project easier.

Local Database Connection Information:
- Postgres Host: localhost
- Postgres Port: 5001
- Postgres User: asset_management
- Postgres Password: asset_management_abcdef
- Postgres Database Name: asset_management
# HOW TO START THIS PROJECT
- Step 1:
-- Go to project folder and run `npm install` manually, because Docker has an issue, currently, `npm install` not working in Docker Container
- Step 2:
-- Run `docker compose up postgres_asset_managment_server -d`
- Step 3: 
-- Sorry so this inconvenient, sometime /docker-entrypoint-initdb.d/init_sql.sql not working as expected.. Please go into postgresql admin and access database using above connection information. Afterward to create a database named `asset_management`. 
- Step 4:
-- Run `./migrate_up.sh`
- Step 5:
-- Run `docker compose up asset_management`
- Step 6:
-- Watch code work. You can edit cron job pattern to every minute to see data synced immediately. Cron job pattern start at 0h everyday, currently

