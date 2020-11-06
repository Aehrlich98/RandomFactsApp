//
//  request.m
//  AnApp
//
//  Created by ehrl on 18.10.20.
//

#import <Foundation/Foundation.h>
#import "request.h"

NSString *url = @"http://uselessfacts.jsph.pl/";

NSString *random_fact = nil;

void request_random_fact(){
    //create request object
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setURL:[NSURL URLWithString:url]];
    [request setHTTPMethod:@"GET /random?language=en"];
    __block NSString *requestReply = nil;
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    [[session dataTaskWithRequest:request completionHandler:^(NSData *_Nullable data, NSURLResponse *_Nullable response, NSError *_Nullable error) {
        NSString *requestReplyBlock = [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
        NSLog(@"Request reply: %@", requestReplyBlock);
        requestReply = requestReplyBlock;
    }] resume];
    random_fact = requestReply;

}
