# build: 
# 	docker build --tag machi-api . && docker run --name machi-api -p 5001:5001 machi-api
# up:
# 	docker run machi-api
# down:
# 	docker stop machi-api
down:
	docker-compose down --remove-orphans
shell:
	docker-compose exec -u ${UID}:${UID} app sh
up:
	docker-compose up --build --remove-orphans -d
up-f:
	docker-compose up --build --remove-orphans