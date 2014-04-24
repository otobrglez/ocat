#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        Person* justMe = [[Person alloc] init];
        [justMe setFirstName:@"Oto"];
        [justMe setLastName:@"Brglez"];
        [justMe sayMyName];

        Person* m = [Person personWithFirstName:@"Martina" andLastName:@"Heric"];
        [m sayMyName];

        NSMutableArray *array = [[NSMutableArray alloc] init];
        [array addObject:@"Item A"];
        [array addObject:@"Item B"];

        // char input;
        // scanf("%c", &input);

    }
    return EXIT_SUCCESS;
}

