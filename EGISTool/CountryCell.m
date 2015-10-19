//
//  CountryCell.m
//  EGISTool
//
//  Created by JAMES.TAN on 15/10/14.
//  Copyright © 2015年 ewj01. All rights reserved.
//

#import "CountryCell.h"

@interface CountryCell ()
@property (nonatomic ,strong) UIImageView *countryImg;

@end
@implementation CountryCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _countryImg = [[UIImageView alloc] init];
//        NSLog(@"%@",self.imageName);
        [self.contentView addSubview:_countryImg];
        
        _text = [[UILabel alloc] initWithFrame:frame];
        [self.contentView addSubview:_text];
    }
    
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    self.countryImg.frame = CGRectMake(0, 0, 50, 50);
    self.text.frame = CGRectMake(0, 0, 50, 50);
    self.text.backgroundColor = [UIColor blueColor];
}


@end
