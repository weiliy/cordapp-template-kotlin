PORT ?= 10025

build/nodes/runnodes:
	@echo Build Codra Nodes
	./gradlew deployNodes

run: build/nodes/runnodes
	@echo Run All Codra Nodes
	@echo Each Nodes will open in new terminal
	./build/nodes/runnodes

clean:
	rm -rf ./build/nodes

PartyA:
	ssh -p 10025 -o StrictHostKeyChecking=no user1@localhost

PartyB:
	ssh -p 10028 -o StrictHostKeyChecking=no user1@localhost
