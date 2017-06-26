//
//  AYTabBarItem.h
//  AYTabBar
//
//  Created by YLCHUN on 2017/6/26.
//  Copyright © 2017年 ylchun. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AYTabBar;

@interface AYTabBarItem : UITabBarItem
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wobjc-property-synthesis"
@property (nonatomic, strong) UIImage *selectedImage NS_UNAVAILABLE;
@property (nonatomic, strong) UIImage *image NS_UNAVAILABLE;
@property (nonatomic, copy) NSString *title NS_UNAVAILABLE;

@property (nonatomic, readonly, weak)AYTabBar *tabBar;

@property (nonatomic, assign) BOOL nilStatus;

@property (nonatomic, strong) UIImage *normalIcon;
@property (nonatomic, strong) UIImage *selectedIcon;

@property (nonatomic, copy) NSString *normalTitle;
@property (nonatomic, copy) NSString *selectedTitle;

@property (nonatomic, strong) UIColor *normalTextColor;
@property (nonatomic, strong) UIColor *selectedTextColor;

@property (nonatomic, assign) BOOL selected;
@property (nonatomic, weak) id object;
#pragma clang diagnostic pop

-(instancetype)initWithNormalTitle:(NSString *)normalTitle selectedTitle:(NSString*)selectedTitle normalIcon:(UIImage *)normalIcon selectedIcon:(UIImage*)selectedIcon normalTextColor:(UIColor*)normalTextColor selectedTextColor:(UIColor*)selectedTextColor action:(void(^)(AYTabBarItem *item))action;

-(instancetype)initWithNormalTitle:(NSString *)normalTitle normalIcon:(UIImage *)normalIcon normalTextColor:(UIColor*)normalTextColor action:(void(^)(AYTabBarItem *item))action;

-(instancetype)initWithNormalTitle:(NSString *)normalTitle normalIcon:(UIImage *)normalIcon action:(void(^)(AYTabBarItem *item))action;

-(instancetype)initWithAction:(void(^)(AYTabBarItem *item))action;


-(void)doAction;
-(void)removeFromTabBar;


- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image tag:(NSInteger)tag NS_UNAVAILABLE;
- (instancetype)initWithTitle:(NSString *)title image:(UIImage *)image selectedIcon:( UIImage *)selectedIcon NS_UNAVAILABLE;
- (instancetype)initWithTabBarSystemItem:(UITabBarSystemItem)systemItem tag:(NSInteger)tag NS_UNAVAILABLE;

@end
