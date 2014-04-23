#include "NSString+reverse.h"

@implementation NSString (reverse)

-(NSString *)reverseString {
    int length = [self length];
    NSMutableString *reversedString;

    reversedString = [[NSMutableString alloc] initWithCapacity: length];

    while (length > 0) {
      [reversedString appendString:[NSString stringWithFormat:@"%C", [self characterAtIndex:--length]]];
    }

    return [reversedString autorelease];
}

@end
