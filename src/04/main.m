#import <Foundation/Foundation.h>
#import "Car.h"
#import "NSString+reverse.h"

int main(int argc, const char * argv[]){
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog(@"Day 04");

  Car *myCar = [[Car alloc] init];
  NSNumber *vin = [NSNumber numberWithInt:999];

  [myCar setVin:vin];
  [myCar setMake:@"Renault" andModel:@"Kangoo"];
  [myCar setColor:@"Light blue"];

  NSLog(@"I drive %@ %@ with vin %@.", [myCar make], [myCar model], [myCar vin]);
  NSLog(@"Color of car is %@.", [myCar color]);

  [myCar release];


  NSString *myString = [[NSString alloc] init];
  myString = @"Oto Was hEre";

  NSLog(@"Reverse %@", [myString reverseString]);

  NSLog(@"File :%s\n", __FILE__ );
  NSLog(@"Date :%s\n", __DATE__ );
  NSLog(@"Time :%s\n", __TIME__ );
  NSLog(@"Line :%d\n", __LINE__ );
  NSLog(@"ANSI :%d\n", __STDC__ );

  [pool drain];
  return EXIT_SUCCESS;
}

// Experimenting with LLDB:
// https://developer.apple.com/library/mac/documentation/IDEs/Conceptual/gdb_to_lldb_transition_guide/document/lldb-command-examples.html
// lldb day-04
// n                  - next
// s                  - step
// b main             - function
// b main.m:20        - set break point
// r                  - run
// fr v               - frame variables
// wa s v global_var  - watch variable


