//
//  HomeVC.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "HomeVC.h"
#import "NSString+MD5.h"
@interface HomeVC () {
    NSString *token;
}

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    if(!self.title) self.title = @"Demo!";
    [self addLeftMenuButton];
    [self getData];
    
}

- (void )encodeMD5 {
    NSString *key1 = @"Y3VuZ2JvY2Fw" ;
    NSString *key2 = @"PZvCeppruwwbhRX4XlBGteOLqeQ=";
//    int time = TimeStamp;
    NSString *key3 = @"123456";//[NSString stringWithFormat:@"%.0f",time];
    
    NSString *myString = [NSString stringWithFormat:@"%@%@%@",key1,key2,key3];
    NSString *md5 = [myString MD5String];
    NSLog(@"input:%@",key3);
    NSLog(@"%@\n",md5);
    token =md5;
    
}
- (void )getData {
    [self encodeMD5];
    
    NSString *deviceID = [[NSUserDefaults standardUserDefaults] objectForKey:@"deviceID"];
    NSString *textContent = @"New note";
    NSString *noteDataString = [NSString stringWithFormat:@"deviceId=%@&textContent=%@", deviceID, textContent];
    
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfiguration.HTTPAdditionalHeaders = @{
                                                   @"token": @"6116938a786b0a2cd9fbc0c38db8e8bc",
                                                   @"time" : @"1466669524",
                                                   @"type" : @"hot",
                                                   @"cate" :@5,
                                                   @"city":@1,
                                                   @"sort": @"rate",
                                                   @"record": @10,
                                                   @"page":@0
                                                   };
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration];
    NSURL *url = [NSURL URLWithString:@"http://huynhdn.api.foody.vn/restaurant"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPBody = [noteDataString dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^( NSData *data, NSURLResponse *response, NSError *error) {
        NSLog(@"%@",data);
        // The server answers with an error because it doesn't receive the params
    }];
    [postDataTask resume];}

@end
