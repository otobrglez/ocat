#include "Car.h"

@implementation Car

@synthesize color;

- (void) setMake : (NSString*)newMake {
  [make release];
  make = [[NSString alloc] initWithString:newMake];

}
- (void) setModel : (NSString*)newModel {
  [model release];
  model = [[NSString alloc] initWithString:newModel];
}

- (void) setVin : (NSNumber*)newVin {
  [vin release];
  vin = [[NSNumber alloc] init];
  vin = newVin;
}

- (void) setMake: (NSString*)newMake
        andModel: (NSString*)newModel {
  [self setMake:newMake];
  [self setModel:newModel];
}

- (NSString*) make {
  return make;
}
- (NSString*) model {
  return model;
}
- (NSNumber*) vin {
  return vin;
}

-(void) dealloc {
  [vin release];
  [make release];
  [model release];
  [color release];
  [super dealloc];
}

@end
