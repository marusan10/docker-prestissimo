.PHONY = all build test template

all: build test

build:
	docker build -t marusan10/prestissimo:0.3 -t marusan10/prestissimo:0.3.6 -t marusan10/prestissimo:latest 0.3

test:
	docker run -t marusan10/prestissimo:latest global info | grep 'hirak/prestissimo 0.3.6'
	docker run -t marusan10/prestissimo:0.3 global info | grep 'hirak/prestissimo 0.3.6'
	docker run -t marusan10/prestissimo:0.3.6 global info | grep 'hirak/prestissimo 0.3.6'

