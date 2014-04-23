#import <Foundation/Foundation.h>
#import <objc/Object.h>
#import <stdio.h>

#import "car.h"

int main(){
  printf("2nd day\n");

  id o = [Car new];
  [o addGas];

  return 0;
}
