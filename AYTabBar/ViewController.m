//
//  ViewController.m
//  AYTabBar
//
//  Created by YLCHUN on 2017/6/26.
//  Copyright © 2017年 ylchun. All rights reserved.
//

#import "ViewController.h"
#import "AYTabBar.h"

@interface ViewController ()<AYTabBarDelegate>
@property (nonatomic, strong) AYTabBar *tabBar;
@end

@implementation ViewController

-(AYTabBar *)tabBar {
    if (!_tabBar) {
        _tabBar = [[AYTabBar alloc] init];
        [self.view insertSubview:_tabBar atIndex:0];
        _tabBar.delegate = self;
        _tabBar.translatesAutoresizingMaskIntoConstraints = NO;
//        [_tabBar addConstraint: [NSLayoutConstraint constraintWithItem:_tabBar attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:40]];
        [self.view addConstraint: [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:_tabBar attribute:NSLayoutAttributeRight multiplier:1 constant:0]];
        [self.view addConstraint: [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:_tabBar attribute:NSLayoutAttributeBottom multiplier:1 constant:0]];
        [self.view addConstraint: [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:_tabBar attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    }
    return _tabBar;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    AYTabBarItem *item0 = [[AYTabBarItem alloc] init];
    item0.normalTitle = @"normalTitle";
    item0.normalIcon = [UIImage imageNamed:@"normalIcon"];
    item0.tag = 0;
    
    AYTabBarItem *item1 = [[AYTabBarItem alloc] init];
    item1.normalTitle = @"normalTitle";
    item1.selectedTitle = @"selectedTitle";
    item1.normalIcon = [UIImage imageNamed:@"normalIcon"];
    item1.selectedIcon = [UIImage imageNamed:@"selectedIcon"];
    item1.normalTextColor = [UIColor blackColor];
    item1.selectedTextColor = [UIColor redColor];
    item1.tag = 1;
    
    AYTabBarItem *item2 = [[AYTabBarItem alloc] init];
    item2.normalTitle = @"normalTitle";
    item2.normalIcon = [UIImage imageNamed:@"normalIcon"];
    item2.selectedIcon = [UIImage imageNamed:@"selectedIcon"];
    item2.tag = 2;
    
    AYTabBarItem *item3 = [[AYTabBarItem alloc] init];
    item3.normalTitle = @"normalTitle";
    item3.selectedTitle = @"selectedTitle";
    item3.normalIcon = [UIImage imageNamed:@"normalIcon"];
    item3.tag = 3;
    
    AYTabBarItem *item4 = [[AYTabBarItem alloc] init];
    item4.normalTitle = @"normalTitle";
    item4.normalIcon = [UIImage imageNamed:@"normalIcon"];
    item4.selectedTextColor = [UIColor redColor];
    item4.tag = 4;
    
    AYTabBarItem *item5 = [[AYTabBarItem alloc] initWithAction:^(AYTabBarItem *item) {
        NSLog(@"item5 didSelectItem:");
//        [item removeFromTabBar];
    }];
    item5.selectedTitle = @"selectedTitle";
    item5.selectedIcon = [UIImage imageNamed:@"selectedIcon"];
    item5.selectedTextColor = [UIColor redColor];
    item5.tag = 5;
    
    AYTabBarItem *item6 = [[AYTabBarItem alloc] initWithAction:^(AYTabBarItem *item) {
        item.nilStatus = YES;
    }];
    item6.normalIcon = [UIImage imageNamed:@"bigger"];
    item6.tag = 6;
    
    self.tabBar.items = @[item0, item1, item2, item3, item4, item5, item6];

    // Do any additional setup after loading the view, typically from a nib.
}

-(BOOL)tabBar:(AYTabBar*)tabBar shouldSelectWithItem:(AYTabBarItem*)item {
    return item.tag != 0;
}
- (void)tabBar:(AYTabBar *)tabBar didSelectItem:(AYTabBarItem *)item {
    NSLog(@"%s", __FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
