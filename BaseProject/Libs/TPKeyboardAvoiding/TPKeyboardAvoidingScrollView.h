//
//  TPKeyboardAvoidingScrollView.h
//  TPKeyboardAvoiding
//
//  Created by Michael Tyson on 30/09/2013.
//  Copyright 2015 A Tasty Pixel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIScrollView+TPKeyboardAvoidingAdditions.h"
@class TPKeyboardAvoidingScrollView;
@protocol TPKeyboardAvoidingScrollViewDelegate <NSObject>
-(void)actionWhenTouchEnd:(TPKeyboardAvoidingScrollView*) TPKeyboardAvoidingScrollView;

@end

@interface TPKeyboardAvoidingScrollView : UIScrollView <UITextFieldDelegate, UITextViewDelegate>
@property (nonatomic, weak) id<TPKeyboardAvoidingScrollViewDelegate> delegate;
- (void)contentSizeToFit;
- (BOOL)focusNextTextField;
- (void)scrollToActiveTextField;
@end
