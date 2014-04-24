#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, copy) NSString* firstName;
@property (nonatomic, copy) NSString* lastName;

- (void) sayMyName;
- (NSString*) fullName;

+ (Person *) personWithFirstName:(NSString *)firstName
                     andLastName:(NSString *)lastName;

@end
