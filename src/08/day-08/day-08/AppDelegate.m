// AppDelegate.m
#import "AppDelegate.h"
#import "GitHubClient.h"
#import "RepositoryCellView.h"
//TODO: Add #import "NSImageView+AFNetworking.h"

@implementation AppDelegate

@synthesize userTextField;
@synthesize consoleTextField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  // [self userRepositories:[userTextField stringValue]];
}


# pragma mark - Helpers
- (void) clearTableView {
  self.results = nil;
  [self.tableView reloadData];
}


# pragma mark - TableView
- (NSInteger) numberOfRowsInTableView:(NSTableView *)tableView {
  
  NSInteger resultsCount = 0;
  
  if (self.results)
    resultsCount = [self.results count];
  
  return resultsCount;
}


- (NSView *)tableView:(NSTableView *)tableView
   viewForTableColumn:(NSTableColumn *)tableColumn
                  row:(NSInteger)row {
  
  RepositoryCellView *result = [tableView makeViewWithIdentifier:@"MainCell" owner:self];
  
  NSDictionary *record = self.results[row];
  
  result.textField.stringValue = record[@"full_name"];
  result.descriptionField.stringValue = record[@"description"];
  
  NSString *imageURLString = record[@"owner"][@"avatar_url"];
  if (imageURLString) {
    
    // This is just bad. Needs to be async or something.
    NSImage *image = [[NSImage alloc] initWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:imageURLString]]];
    
    result.imageView.image = image;
  };

  return result;
}

# pragma mark - Fetching
- (BOOL) gotUsername:(NSString *)username{
  
  if ([username isEqualToString:@""]) {
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Please enter valid GitHub username!"];
    [alert runModal];
    
    return false;
  };
  
  return true;
}


- (void) userRepositories:(NSString *)username {
  [self clearTableView];
  
  NSURLSessionDataTask *task = [[GitHubClient sharedClient] userRepositories:username fetch:^(NSArray *results, NSError *error) {
    
    if (!results) return;
    
    self.results = results;
    [self.tableView reloadData];
  }];
  
  task = nil;
}

# pragma mark - UI actions
- (IBAction) fetchRepositories:(id)sender {
  if (![self gotUsername:[userTextField stringValue]]) return;
  
  [self userRepositories:[userTextField stringValue]];
}


@end
