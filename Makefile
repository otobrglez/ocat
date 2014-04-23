all: day-01 day-02

clean: clean-01 clean-02

## day 1

day-01: clean-01
	gcc src/01/day.m -o day-01

clean-01:
	rm -rf day-01

run-01: day-01
	./day-01

## day 2

day-02: clean-02
	gcc -Wall \
		-x objective-c \
		-lobjc \
		-o day-02 src/02/day.m src/02/car.m

clean-02:
	rm -rf day-02

run-02: day-02
	./day-02
