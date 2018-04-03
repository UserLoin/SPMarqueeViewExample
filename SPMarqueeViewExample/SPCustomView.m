//
//  SPCustomView.m
//  SPMarqueeViewExample
//
//  Created by 123456789 on 2018/3/6.
//  Copyright © 2018年 123456789. All rights reserved.
//

#import "SPCustomView.h"

@implementation SPCustomView

#pragma mark - 懒加载
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
        [self addSubview:_titleLabel];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.font = [UIFont systemFontOfSize:13];
        _titleLabel.textColor = [UIColor redColor];
        _titleLabel.layer.masksToBounds = YES;
        _titleLabel.layer.cornerRadius = 3;
        _titleLabel.layer.borderWidth = 1;
        _titleLabel.layer.borderColor = [UIColor redColor].CGColor;
    }
    return _titleLabel;
}
- (UILabel *)contentLabel {
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc]init];
        [self addSubview:_contentLabel];
        _contentLabel.textAlignment = NSTextAlignmentLeft;
        _contentLabel.font = [UIFont systemFontOfSize:13];
    }
    return _contentLabel;
}

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupView];
    }
    return self;
}
- (void)setupView {
    
    self.titleLabel.frame   = CGRectMake(10, 10, 40, 20);
    self.contentLabel.frame = CGRectMake(CGRectGetMaxX(self.titleLabel.frame) + 10, CGRectGetMinY(self.titleLabel.frame), 140, 20);
}
@end
