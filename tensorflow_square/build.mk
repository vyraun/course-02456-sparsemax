
# square.so target
tensorflow_square/kernel/custom_square.so: tensorflow_square/kernel/custom_square.o tensorflow_square/kernel/custom_square.cu.o

# user friendly targets
square-all: square-test square-lint

square-test: tensorflow_square/kernel/custom_square.so
	nosetests --nologcapture -v -s tensorflow_square/test/test_*.py

square-lint:
	pep8 --show-source --show-pep8 ./tensorflow_square
