//
//  HTLockTableViewCell.m
//  AllInOneCard
//
//  Created by Hutong on 21/03/2018.
//  Copyright © 2018 HT. All rights reserved.
//

#import "HTLockTableViewCell.h"

@implementation HTLockTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(20,self.contentView.bounds.size.height/2 -15,30,30);
    
    [self.imageView setAutoresizingMask:UIViewAutoresizingNone];
    
}


@end
