DB_URL=mysql://user:password@tcp(0.0.0.0:3306)/frete_rapido


createdb:
	docker exec -it frete-rapido-api-mariadb-1  mariadb  --user user --password=password -e "CREATE DATABASE frete_rapido;"

dropdb:
	docker exec -it frete-rapido-api-mariadb-1  mariadb --user user --password=password -e "DROP DATABASE frete_rapido;"

migrateup:
	migrate -path internal/db/migration -database "$(DB_URL)" -verbose up

migratedown:
	migrate -path internal/db/migration -database "$(DB_URL)" -verbose down

test:
	go test -v -cover ./...

.PHONY: createdb dropdb migrateup migratedown test
