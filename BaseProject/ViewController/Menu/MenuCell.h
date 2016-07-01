//
//  MenuCell.h
//  ridesharing
//
//  Created by HaiNam Do on 2/27/16.
//  Copyright © 2016 Tung Dao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

- (void)configCellWithDict:(NSDictionary *)dict;

@end
