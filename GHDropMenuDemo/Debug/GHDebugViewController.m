//
//  GHDebugViewController.m
//  GHDropMenuDemo
//
//  Created by zhaozhiwei on 2018/12/27.
//  Copyright © 2018年 GHome. All rights reserved.
//  gitHub:https://github.com/shabake/GHDropMenuDemo

#import "GHDebugViewController.h"
#import "UILabel+GHome.h"
#import "UIView+Extension.h"
#import "NSArray+Bounds.h"
#import "GHWaterFallLabel.h"

@interface GHDebugViewController ()
@property (nonatomic , strong) GHWaterFallLabel *waterFallLabel;
@property (nonatomic , strong) NSMutableArray *tags;

@end
#define kScreenWidth  [UIScreen mainScreen].bounds.size.width

@implementation GHDebugViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"debug";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.tags addObject:@"呵呵啊"];
    [self.tags addObject:@"嘻嘻"];
    [self.tags addObject:@"哈"];
    [self.tags addObject:@"哦"];
    [self.tags addObject:@"嘻嘻"];
    [self.tags addObject:@"哈"];
    [self.tags addObject:@"哦"];
    [self.tags addObject:@"嘻嘻"];
    [self.tags addObject:@"哈"];
    [self.tags addObject:@"哦"];
    
    GHWaterFallLabel *waterFallLabel = [GHWaterFallLabel creatWaterFallLabelWithPoint:CGPointMake(0, 64) tags:self.tags];
    waterFallLabel.isMultiple = YES;
    [self.view addSubview:waterFallLabel];
    waterFallLabel.multipleBlock = ^(GHWaterFallLabel * _Nonnull waterFallLabe, NSArray * _Nonnull array) {
        NSLog(@"%@",array);
    };
    waterFallLabel.textBlock = ^(GHWaterFallLabel * _Nonnull waterFallLabe, NSString * _Nonnull text, NSInteger index) {
        NSLog(@"%@",text);
    };
}

- (NSMutableArray *)tags {
    if (_tags == nil) {
        _tags = [NSMutableArray array];
    }
    return _tags;
}
@end
