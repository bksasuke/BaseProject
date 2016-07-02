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
#define TimeStamp [NSString stringWithFormat:@"%f",[NSDate date] timeIntervalSince1970]
#define norinaUser                              @"phone_number"
#define norinaUserID                            @"id"
#define norinaPassword                          @"password"
#define norinaToken                             @"token"
#define norinaName                              @"name"
#define norinaUserType                          @"user_type"
#define norinaEmail                             @"email"
#define norinaActiveCode                        @"active_code"
#define norinaIntroduce                         @"introduce"
#define norinaGender                            @"gender"
#define norinaSmoking                           @"smoking"
#define norinaPasswordOpenFire                  @"plainPassword"
#define norinaServer                            @"server"
#define norinaNameOpenFire                      @"username"
#define norinaCardNumber                        @"card_no"
#define norinaCardExpire                        @"expire"
#define norinaCardCVV                           @"cvv"
#define norinaAvatar                            @"avatar"
#define norinaCoupons                           @"coupons"
#define phonePrefix                             @"+84"

#define profileName                             @"name"
#define profilePhoneNumber                      @"phone_number"
#define profileEmail                            @"email"
#define profileAddress                          @"address1"
#define profileDOB                              @"birthday"
#define profileIntroduction                     @"introduce"
#define profileAvatar                           @"avatar"

#define registerUITextView                      @"100文字以内"
#define reviewUITextView                        @"レビューを書く"

#define messageTypePushState                    @"push_state"
#define messageTypeMessage                      @"text"
#define messageTypeMessageState                 @"read"

#define ReLoadMatchingList                      @"ReLoadMatchingList"
#define ReLoadDeparture                         @"ReLoadDeparture"
#define ReLoadChat                              @"ReLoadChat"

#define IS_IPHONE                               (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define SCREEN_WIDTH                            ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT                           ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH                       (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH                       (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))
#define IS_IPHONE_6_OR_MORE                     (IS_IPHONE && SCREEN_MAX_LENGTH > 568.0)

typedef enum
{
    SubmitTripTypeDriver = 0,
    SubmitTripTypePassenger = 1
} SubmitTripType;

typedef enum
{
    UserActionTypeSubmitRoute = 0,
    UserActionTypeMatching = 1,
    UserActionTypeDeparture = 2
} UserActionType;

typedef enum
{
    DepartureTypeDriver = 0,
    DepartureTypePassenger = 1
} DepartureType;

typedef enum
{
    TripNotPaid = 0,
    TripPaid = 1
} TripPaidState;

typedef enum
{
    DepartureMatch = 1,
    DepartureApprove = 2,
    DeparturePay = 3,
    DepartureDepart = 4,
    DepartureGeton = 5,
    DepartureArrive = 6,
    DepartureCancel = 7,
    DepartureTransactionCancel = 8,
    DepartureUnknown = 0
} DepartureAction;

typedef enum
{
    UserTypeDriver = 0,
    UserTypePassenger = 1
} UserType;

#endif
