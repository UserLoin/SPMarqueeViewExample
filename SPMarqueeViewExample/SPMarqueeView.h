//
//  SPMarqueeView.h
//  SPMarqueeViewExample
//
//  Created by 123456789 on 2018/3/6.
//  Copyright © 2018年 123456789. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^SPMarqueeViewBlock) (NSInteger);

@interface SPMarqueeView : UIView
@property(nonatomic,copy)SPMarqueeViewBlock block;

@property(nonatomic,strong)NSArray *marqueeTitleArray;
@property(nonatomic,strong)NSArray *marqueeContentArray;

@property(nonatomic,assign)CGFloat animationDuration;//滚动时间
@property(nonatomic,assign)CGFloat pauseDuration;//停顿时间

- (void)start;
@end
