.DEFAULT_GOAL := install

.PHONY: build
build:
	$(MAKE) clean
	go build -o bin/git-extension main.go

.PHONY: clean
clean:
	rm -f ./bin/git-extension

.PHONY: install
install:
	cp bin/git-extension /usr/local/bin/git-extension
