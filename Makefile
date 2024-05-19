start:
	docker-compose -f compose.yaml up -d

restart:
	docker-compose -f compose.yaml rm -s -f || true
	docker-compose -f compose.yaml up -d

list-databases:
	docker exec -i mysql mysql -uroot -pexample -e "show databases;"

list-countries:
	docker exec -i mysql mysql -uroot -pexample -D mydatabase -e "select * from countries;"

having-example:
	docker exec -i mysql mysql -uroot -pexample -D mydatabase -e "SELECT count(people.id), people.country, countries.name FROM people INNER JOIN countries ON people.country = countries.id GROUP BY people.country, countries.name HAVING count(people.id) > 2;"
