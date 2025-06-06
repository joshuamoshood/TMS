.PHONY: build-dev
build-dev: ##build the image
	docker build -f DockerfileDev -t tms-dev .

.PHONY: run-dev
run-dev: ## start the container
	docker run -d \
	-v $(pwd):/app\
	-p 8054:8000 \
	--rm --name tms-dev-container \
	tms-dev 

.PHONY: exec
exec: ## run the container
	docker exec -it \ 
	-v $(pwd):/app\
	tms-dev-container bash
	