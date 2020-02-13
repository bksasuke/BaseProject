//
//  Constant.h
//  hidezo
//
//  Created by Tung Dao on 9/8/15.
//  Copyright (c) 2015 Tung Dao. All rights reserved.
//

#ifndef FeedyPrefix_h
#define FeedyPrefix_h

#define policyUrl                               @"http://www.norina.jp/policy.php"
#define termsUrl                                @"http://www.norina.jp/terms.php"
#define guideUrl                                @"http://www.norina.jp/guide.html"

#define userDefault                             [NSUserDefaults standardUserDefaults]
#define feedyAccount                           @"feedyAccountDefault"
#define TimeStamp [NSString stringWithFormat:@"%f",[[NSDate date] timeIntervalSince1970]]
#define KEY_1                                   Y3VuZ2JvY2Fw
#define KEY_2                                   PZvCeppruwwbhRX4XlBGteOLqeQ=


#define IS_IPHONE                               (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define SCREEN_WIDTH                            ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT                           ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH                       (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH                       (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))
#define IS_IPHONE_6_OR_MORE                     (IS_IPHONE && SCREEN_MAX_LENGTH > 568.0)

typedef enum
{
    UserTypeDriver = 0,
    UserTypePassenger = 1
} UserType;

#endif
