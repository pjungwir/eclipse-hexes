

database:
	sudo su - postgres -c psql < create-database.sql

tables:
	PGPASSWORD=ancients psql -U eclipse_hexes -h localhost < create-tables.sql

rows:
	./csv-to-sql.rb eclipse-hexes.csv | PGPASSWORD=ancients psql -U eclipse_hexes -h localhost

report:
	PGPASSWORD=ancients psql -U eclipse_hexes -h localhost < hexes-report.sql
