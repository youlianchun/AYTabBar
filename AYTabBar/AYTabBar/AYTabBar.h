//
//  AYTabBar.h
//  AYTabBar
//
//  Created by YLCHUN on 2017/6/26.
//  Copyright © 2017年 ylchun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AYTabBarItem.h"
@class AYTabBar;
@protocol AYTabBarDelegate <UITabBarDelegate>

@optional
-(BOOL)tabBar:(AYTabBar*)tabBar shouldSelectWithItem:(AYTabBarItem*)item;

@end
@interface AYTabBar : UITabBar
#pragma clang diagnostic push
#pragma clang diagnostic ignored"-Wobjc-property-synthesis"
@property(nonatomic, copy) NSArray<AYTabBarItem *> *items;
@property(nonatomic, weak) id<AYTabBarDelegate> delegate;     // weak reference. default is nil
#pragma clang diagnostic pop

@property (nonatomic, strong) UIImage* backgroundImage;
@property (nonatomic, strong) UIColor* shadowColor;
@property (nonatomic, strong) UIImage* lineImage;
@end
