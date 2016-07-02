//
//  FeedyAccount.m
//  ridesharing
//
//  Created by Tung Dao on 2/4/16.
//  Copyright © 2016 Tung Dao. All rights reserved.
//

#import "FeedyAccount.h"

@implementation FeedyAccount

- (void)encodeWithCoder:(NSCoder *)encoder
{
   }

- (id)initWithCoder:(NSCoder *)decoder
{
    self = [super init];
    if( self != nil ) {
    
    }
    return self;
}

- (id)copyWithZone:(NSZone *) zone
{
    FeedyAccount *accountCopy = [[FeedyAccount allocWithZone: zone] init];
    accountCopy.user = _user;
    accountCopy.user_id = _user_id;
    accountCopy.password = _password;
    accountCopy.token = _token;
    accountCopy.name = _name;
    accountCopy.user_type = _user_type;
    accountCopy.user_openfire = _user_openfire;
    accountCopy.password_openfire = _password_openfire;
    accountCopy.server = _server;
    accountCopy.card_number = _card_number;
    accountCopy.card_expire = _card_expire;
    accountCopy.card_cvv = _card_cvv;
    accountCopy.avatar = _avatar;
    accountCopy.coupons = _coupons;
    return accountCopy;
}

@end
