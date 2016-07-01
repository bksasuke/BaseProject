//
//  MenuCell.m
//  ridesharing
//
//  Created by HaiNam Do on 2/27/16.
//  Copyright © 2016 Tung Dao. All rights reserved.
//

#import "MenuCell.h"

@implementation MenuCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)configCellWithDict:(NSDictionary *)dict
{
    _nameLabel.text = [dict valueForKey:@"title"];
    _iconImageView.image = [UIImage imageNamed:[dict valueForKey:@"icon"]];
}

@end
