//
//  HomeVC.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "HomeVC.h"
#import "NSString+MD5.h"
@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    if(!self.title) self.title = @"Demo!";
    [self addLeftMenuButton];
    [self encodeMD5];
    
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
    
}

@end
