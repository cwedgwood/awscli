default: test

build:
	docker build -t cwedgwood/awscli .
	docker images

test: build
	docker run \
		--rm \
		-v $(HOME)/.aws/credentials:/root/.aws/credentials \
		cwedgwood/awscli ec2 describe-instances

clean:
	rm -f *~

.PHONY: default build test clean
