//
//  AppController.m
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import "AppController.h"
static AppController *sharedInstance = nil;

@implementation AppController
+ (AppController *)sharedInstance
{
    if (nil != sharedInstance) {
        return sharedInstance;
    }
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[AppController alloc] init];
    });
    
    return sharedInstance;
}

#pragma mark - Account

- (void)storeAccountToUserDefault:(FeedyAccount *)account
{
    NSData *myEncodedObject = [NSKeyedArchiver archivedDataWithRootObject:account];
    [userDefault setObject:myEncodedObject forKey:feedyAccount];
    [userDefault synchronize];
}
- (FeedyAccount *)getAccountFromUserDefault
{
    NSData *myDecodedObject = [userDefault objectForKey:feedyAccount];
    FeedyAccount *account = [NSKeyedUnarchiver unarchiveObjectWithData:myDecodedObject];
    return account;
}
@end
