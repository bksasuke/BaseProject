//
//  FeedyAccount.h
//  ridesharing
//
//  Created by Tung Dao on 2/4/16.
//  Copyright © 2016 Tung Dao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FeedyAccount : NSObject

@property (nonatomic, strong) NSString *user;
@property (nonatomic, strong) NSString *user_id;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSString *token;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *user_type;
@property (nonatomic, strong) NSString *user_openfire;
@property (nonatomic, strong) NSString *password_openfire;
@property (nonatomic, strong) NSString *server;
@property (nonatomic, strong) NSString *card_number;
@property (nonatomic, strong) NSString *card_expire;
@property (nonatomic, strong) NSString *card_cvv;
@property (nonatomic, strong) NSString *avatar;
@property (nonatomic, strong) NSMutableArray *coupons;

@end
