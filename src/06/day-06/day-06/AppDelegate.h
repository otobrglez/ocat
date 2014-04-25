#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

#pragma mark Properties
@property (unsafe_unretained) IBOutlet NSTextView *textView;

#pragma mark Actions
- (IBAction)onPushMe:(id)sender;
- (IBAction)clearTextView:(id)sender;

@end
