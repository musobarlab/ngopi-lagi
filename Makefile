.PHONY : init-db

init-db:
	docker run --rm \
	-e INFLUXDB_DB=telegraf -e INFLUXDB_ADMIN_ENABLED=true \
	-e INFLUXDB_ADMIN_USER=admin \
	-e INFLUXDB_ADMIN_PASSWORD=admin \
	-e INFLUXDB_USER=telegraf -e INFLUXDB_USER_PASSWORD=telegraf \
	-v ${PWD}/influxdb/data:/var/lib/influxdb \
	influxdb /init-influxdb.sh