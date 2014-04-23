#import <Foundation/Foundation.h>

@interface Car : NSObject {
  NSString* make;
  NSString* model;
  NSNumber* vin;
}

@property(nonatomic, retain) NSString* color;
// @property(nonatomic, readwrite) double y;

- (void) setMake : (NSString*)newMake;
- (void) setModel : (NSString*)newModel;
- (void) setVin : (NSNumber*)newVin;

- (void) setMake: (NSString*)newMake
        andModel: (NSString*)newModel;

- (NSString*) make;
- (NSString*) model;
- (NSNumber*) vin;

@end
