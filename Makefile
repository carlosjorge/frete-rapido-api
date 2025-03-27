mariadb:
	docker run --name mariadb --env MARIADB_ROOT_PASSWORD=password mariadb:lts-noble

createdb:
	docker exec -it mariadb  mariadb --user root --password=password -e "CREATE DATABASE frete_rapido;"

dropdb:
	docker exec -it mariadb  mariadb --user root -ppassword -e "DROP DATABASE frete_rapido;"



test:
	go test -v -cover ./...

.PHONY: createdb dropdb test
