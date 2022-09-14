## SQL database: local setup for running PostgreSQL and pgAdmin using Docker

This repo contains a local setup for running a PostgreQL database with pgAdmin. A script can be used to load data in the database and analyze it using SQL via pgadmin.

Prerequisities: Docker installed

### Instructions 

For initial setup, run

```bash
docker compose up
```

To connect pgadmin4 to the database, go to http://localhost:8080. Use user name admin@admin.com and password root (defined in the ```docker-compose.yaml``` file) to log in.

Go to Servers > Create > Server to create a server connection. Fill in the following:
- Host name/address: service name defined in the ```docker-compose.yaml```
- username and password: username and password defined in the ```docker-compose.yaml```

To stop the setup, run 

```bash
docker compose down
```

### Loading data in the DB

#### Method 1: using a Python script

Data can be loaded in the database from .csv files, using the ```ingest_data_local.py``` script.
To load data, place the .csv file in this folder and run the script.

Example:
```bash
 python ingest_data_local.py \
    --user=root \
    --password=root \
    --host=localhost \
    --port=5432 \
    --db=case_study_db \
    --table_name=test_table \
    --csv_name=test_data.csv
```

#### Method 2: creating tables and inserting data into it using the pgadmin4 UI

Example SQL can be found in the ```create_table_example.sql``` file.