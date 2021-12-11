build-image:
	docker image build ./ -t $(shell basename `pwd` | tr 'A-Z' 'a-z') --no-cache

run:
	docker run -it -v $(shell pwd):/root/src --name $(shell basename `pwd`) -p 8000:8000 --rm $(shell basename `pwd` | tr 'A-Z' 'a-z')

app:
	docker exec -it $(shell basename `pwd`) bash

rm-image:
	docker rmi $(shell basename `pwd` | tr 'A-Z' 'a-z')