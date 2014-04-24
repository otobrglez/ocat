#import "Person.h"

@implementation Person

// @synthesize name // = _name;

-(NSString*)fullName {
    NSString* name = [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
    return name;
}

-(void)sayMyName {
    NSLog(@"My name is %@", self.fullName);
}

+ (Person *) personWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName {

    Person * p = [[Person alloc] init];
    p.firstName = firstName;
    p.lastName = lastName;
    
    // return [p autorelease];
    return p;
}

- (void) dealloc {
//    [super dealloc];
}

@end
