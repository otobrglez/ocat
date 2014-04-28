//  GitHubClient.h
#import "AFHTTPSessionManager.h"

@interface GitHubClient : AFHTTPSessionManager

+(GitHubClient *) sharedClient;


- (NSURLSessionDataTask *)userRepositories:(NSString *) username
                                     fetch:(void (^)(NSArray *results, NSError *error)) fetch;

@end
