#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self.textView setString:@"Hello."];
}

- (IBAction)onPushMe:(id)sender {
    NSString * oldText = [[NSString alloc] initWithString:[self.textView string]];
    NSString * newText = [oldText stringByAppendingString:@"Click\n"];
    
    [self.textView setString:newText];
}

- (IBAction)clearTextView:(id)sender {
    [self.textView setString:@""];
}

@end
