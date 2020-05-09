build/nodes/runnodes:
	@echo Build Codra Nodes
	./gradlew deployNodes

run: build/nodes/runnodes
	@echo Run All Codra Nodes
	@echo Each Nodes will open in new terminal
	./build/nodes/runnodes

clean:
	rm -rf ./build/nodes
