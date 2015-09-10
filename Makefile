serve: compile
	static . -f cors.json -p 9000

compile:
	coffee -c -m script.coffee
	bash compile.sh

