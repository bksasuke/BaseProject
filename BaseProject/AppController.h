//
//  AppController.h
//  BaseProject
//
//  Created by suke on 7/1/16.
//  Copyright © 2016 suke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FeedyAccount.h"
@interface AppController : NSObject

+ (AppController *)sharedInstance;
- (void)storeAccountToUserDefault:(FeedyAccount *)account;
- (FeedyAccount *)getAccountFromUserDefault;
@end
