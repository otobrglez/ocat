//  GitHubClient.m
#import "GitHubClient.h"

@implementation GitHubClient

+(GitHubClient *) sharedClient {
  static GitHubClient *_sharedClient = nil;
  
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    NSURL *baseURL = [NSURL URLWithString:@"https://api.github.com"];
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];

    [config setHTTPAdditionalHeaders:@{ @"User-Agent" : @"TuneStore iOS 1.0"}];

    NSURLCache *cache = [[NSURLCache alloc] initWithMemoryCapacity:10 * 1024 * 1024
                                                      diskCapacity:50 * 1024 * 1024
                                                          diskPath:nil];
    [config setURLCache:cache];
    
    _sharedClient = [[GitHubClient alloc] initWithBaseURL:baseURL
                                     sessionConfiguration:config];
    
    _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
  });
  
  return _sharedClient;
}


- (NSURLSessionDataTask *)userRepositories:(NSString *) username
                                     fetch:(void (^)(NSArray *results, NSError *error)) fetch {
  
  return [self GET:[NSString stringWithFormat:@"/users/%@/repos", username]
        parameters:@{@"per_page": @"50"}
           success:^(NSURLSessionDataTask *task, id responseObject) {
             NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)task.response;
             if (httpResponse.statusCode == 200) {
               dispatch_async(dispatch_get_main_queue(), ^{
                 fetch(responseObject, nil);
               });
             } else {
               dispatch_async(dispatch_get_main_queue(), ^{
                 fetch(nil, nil);
               });
             };
           } failure:^(NSURLSessionDataTask *task, NSError *error) {
             dispatch_async(dispatch_get_main_queue(), ^{
               fetch(nil, error);
             });
           }];
}

@end
