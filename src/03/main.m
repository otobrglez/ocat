#include <stdio.h>
#import <Foundation/Foundation.h>

@interface Person : NSObject{
  NSString* name;
}
- (void) sayMyName;
@end

@implementation Person

- (void) setName: (NSString*)newName{
  [name release];
  name = [newName retain];
}

- (void) sayMyName {
  NSLog(@"Hello my name is %@", name);
}
@end


int main(int argc, const char * argv[]){
  NSLog(@"Day 03");

  NSString *someString;
  someString = [[NSString alloc] init];
  someString = @"This is my test string";
  NSLog(@"Using NSLog to print: %@", someString);

  Person *me = [[Person alloc] init];
  me.name = @"Oto Brglez";
  [me sayMyName];

  return 0;
}
