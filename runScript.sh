#!/bin/bash

# Set MySQL credentials (local)
DB_HOST="localhost"
DB_USER="root"
DB_NAME="F1RacingDB"

# Prompt for password once (secure)
read -s -p "Enter MySQL password for user '$DB_USER': " DB_PASS
echo

# Run SQL scripts and output results to text files
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < create.sql > createResults.txt
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < insertDrivers.sql > driversResults.txt
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < insertTeams.sql > teamsResults.txt
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < insertFastestLaps.sql > fastestLapsResults.txt
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < insertWinners.sql > winnersResults.txt
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < queries.sql > queriesResults.txt
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < triggers.sql > triggersResults.txt
mysql -t -v -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < procedure.sql > procedureResults.txt

# Dump the database to a file (for backup or sharing)
mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > dumpfile.sql
