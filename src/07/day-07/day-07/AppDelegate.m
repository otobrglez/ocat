#import "AppDelegate.h"

@implementation AppDelegate {
    NSMutableArray *_tableContents;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (IBAction)addTextToList:(id)sender {

    NSString *inputText = [self.inputField stringValue];
    
    [self.inputField setStringValue:@""];
    
    NSLog(@"Text %@", inputText);
}

- (void) awakeFromNib {
    _tableContents = [[NSMutableArray alloc] init];
    
    NSString *path = @"/Library/Application Support/Apple/iChat Icons/Flags";
    NSFileManager *fileManager = [NSFileManager defaultManager];
    NSDirectoryEnumerator *directoryEnum = [fileManager enumeratorAtPath:path];
    
    NSString *file;
    while(file = [directoryEnum nextObject]){
        NSString *filePath = [path stringByAppendingFormat:@"/%@", file];
        NSLog(@"Path %@", filePath);

        NSDictionary *obj = @{@"image": [[NSImage alloc] initByReferencingFile:filePath],
                              @"name": [file stringByDeletingPathExtension]};
        
        [_tableContents addObject:obj];
    };
}

- (NSInteger) numberOfRowsInTableView:(NSTableView *)tableView {
    return [_tableContents count];
}

- (NSView *) tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    
    NSDictionary *flag = _tableContents[row];
    NSString *identified = [tableColumn identifier];
    
    
    if ([identified isEqualToString:@"MainCell"]) {
        NSTableCellView *cellView =  [tableView makeViewWithIdentifier:@"MainCell" owner:self];
        [cellView.textField setStringValue:flag[@"name"]];
        [cellView.imageView setImage:flag[@"image"]];
        return cellView;
    }
    
    return nil;
}

@end
