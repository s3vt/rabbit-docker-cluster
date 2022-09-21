classic-up:
	make -C classic/ up
classic-down:
	make -C classic/ down


script-up:
	make -C script/ up
script-down:
	make -C script/ down

dns-up:
	make -C dns/ up
dns-down:
	make -C dns/ down

test: classic-up
	docker run \
		--network=classic_default \
		--rm \
		-v ${PWD}/tests:/etc/newman/ \
		postman/newman:alpine \
		run rabbit_collection.json -e rabbit_env.json
