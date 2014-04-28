// AppDelegate.h
#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSTableViewDataSource>

@property (assign) IBOutlet NSWindow *window;
@property (nonatomic, strong) NSArray *results;
@property (weak) IBOutlet NSTextField *userTextField;
@property (unsafe_unretained) IBOutlet NSTextView *consoleTextField;
@property (weak) IBOutlet NSTableView *tableView;

- (BOOL) gotUsername:(NSString *)username;
- (void) userRepositories:(NSString *)username;
- (void) clearTableView;

@end
