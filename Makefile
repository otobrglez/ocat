CC=clang
FRAMEWORKS= -framework Foundation
LIBRARIES= -lobjc

all: day-01 day-02 day-03

clean: clean-01 clean-02 clean-03

## day 1

day-01: clean-01
	$(CC) src/01/day.m -o day-01

clean-01:
	rm -rf day-01

run-01: day-01
	./day-01

## day 2

day-02: clean-02
	$(CC) -Wall \
		-x objective-c \
		$(LIBRARIES) \
		$(FRAMEWORKS) \
		-o day-02 src/02/day.m src/02/car.m

clean-02:
	rm -rf day-02

run-02: day-02
	./day-02

## day 3

day-03: clean-03
	$(CC) -Wall -Werror -g\
		-x objective-c \
		$(LIBRARIES) \
		$(FRAMEWORKS) \
		-o day-03 src/03/main.m

clean-03:
	rm -rf day-03

run-03: day-03
	./day-03
