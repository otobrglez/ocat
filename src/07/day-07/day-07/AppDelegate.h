#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource, NSTableViewDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextField *inputField;

@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)addTextToList:(id)sender;

@end
