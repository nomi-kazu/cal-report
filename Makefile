# Docker
build:
	docker-compose -f docker-compose.yaml build

up:
	docker-compose -f docker-compose.yaml up

down:
	docker-compose -f docker-compose.yaml down

dbset:
	docker-compose run rails db:environment:set RAILS_ENV=development


# Vue
npminstall:
	docker-compose run front npm install

lint:
	docker-compose run front npm run lint
	

# Rails 
migrate:
	docker-compose run web rails db:migrate

rollback:
	docker-compose run web rails db:rollback

migratereset:
	docker-compose run web rails db:migrate:reset

seed:
	docker-compose run web rails db:seed

seedreset:
	docker-compose run web rails db:reset

geminstall:
	docker-compose run web gem install