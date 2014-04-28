CC=clang
FRAMEWORKS= -framework Foundation
LIBRARIES= -lobjc
FLAGS= -Wall -Werror -g -x objective-c
CURRENT_DIR = $(shell pwd)
BUILD_TOOL = xctool

# all: run-05
all: day-01 day-02 day-03 day-04 Day5 day-06 day-07 day-08

clean: clean-01 clean-02 clean-03 clean-04 clean-05 clean-06 clean-07 clean-08

## day 1

day-01: clean-01
	$(CC) src/01/day.m -o day-01

clean-01:
	rm -rf day-01

run-01: day-01
	./day-01

## day 2

day-02: clean-02
	$(CC) -Wall -x objective-c $(LIBRARIES) $(FRAMEWORKS) \
		-o day-02 src/02/day.m src/02/car.m

clean-02:
	rm -rf day-02

run-02: day-02
	./day-02

## day 3

day-03: clean-03
	$(CC) -Wall -Werror -x objective-c $(LIBRARIES) $(FRAMEWORKS) \
		-o day-03 src/03/main.m

clean-03:
	rm -rf day-03

run-03: day-03
	./day-03

## day 4

day-04: clean-04
	$(CC) $(FLAGS) $(LIBRARIES) $(FRAMEWORKS) \
		-o day-04 src/04/main.m \
		src/04/Car.m src/04/NSString+reverse.m

clean-04:
	rm -rf day-04 *.dSYM

run-04: day-04
	./day-04

## day 5

Day5: clean-05
	$(BUILD_TOOL) -sdk macosx10.9 \
		-workspace src/05/Day5.xcworkspace \
		-scheme Day5 \
		-configuration Debug \
		build \
		CONFIGURATION_BUILD_DIR=$(CURRENT_DIR)
	ln -s Day5 day-05

clean-05:
	rm -rf day-05 Day5 *.a

run-05: Day5
	./Day5

## day 6

day-06: clean-06
	$(BUILD_TOOL) -sdk macosx10.9 \
		-workspace src/06/day-06.xcworkspace \
		-scheme day-06 \
		-configuration Debug \
		build \
		CONFIGURATION_BUILD_DIR=$(CURRENT_DIR)

clean-06:
	rm -rf day-06 *.a day-06.app

run-06: day-06
	open day-06.app

## day 7

day-07: clean-07
	$(BUILD_TOOL) -sdk macosx10.9 -workspace src/07/day-07.xcworkspace -scheme day-07 -configuration Debug build CONFIGURATION_BUILD_DIR=$(CURRENT_DIR)

clean-07:
	rm -rf day-07 *.a day-07.app

run-07: day-07
	open day-07.app

## day 7

day-08: clean-08
	$(BUILD_TOOL) -sdk macosx10.9 -workspace src/08/day-08.xcworkspace -scheme day-08 -configuration Debug build CONFIGURATION_BUILD_DIR=$(CURRENT_DIR)

clean-08:
	rm -rf day-08 *.a day-08.app

run-08: day-08
	open day-08.app
