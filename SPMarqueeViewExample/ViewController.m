//
//  ViewController.m
//  SPMarqueeViewExample
//
//  Created by 123456789 on 2018/3/6.
//  Copyright © 2018年 123456789. All rights reserved.
//

#import "ViewController.h"
#import "SPMarqueeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    SPMarqueeView *marqueeView = [[SPMarqueeView alloc]initWithFrame:CGRectMake(0, 0, 200, 40)];
    [self.view addSubview:marqueeView];
    marqueeView.backgroundColor = [UIColor yellowColor];
    marqueeView.center = CGPointMake([UIScreen mainScreen].bounds.size.width/2.f, [UIScreen mainScreen].bounds.size.height/2.f);
    marqueeView.marqueeTitleArray = @[@"新闻",
                                      @"游戏",
                                      @"娱乐"];
    marqueeView.marqueeContentArray = @[@"我在测试第一组数据",
                                        @"我在测试第二组数据",
                                        @"我在测试第三组数据"];
    [marqueeView start];
    marqueeView.block = ^(NSInteger index) {
        NSLog(@"点击了第%ld组数据",index);
    };
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
