build:
	docker build --platform linux/amd64 -t game .

run:
	docker run -it -v ./index.html:/usr/share/nginx/html/index.html -p 80:80 game

auth:
	aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 888292602105.dkr.ecr.us-east-2.amazonaws.com

push:
	docker tag game:latest 888292602105.dkr.ecr.us-east-2.amazonaws.com/game:latest
	docker push 888292602105.dkr.ecr.us-east-2.amazonaws.com/game:latest
