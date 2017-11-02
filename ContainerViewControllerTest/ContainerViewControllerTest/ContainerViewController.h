//
//  ContainerViewController.h
//  ContainerViewControllerTest
//
//  Created by Shuaiqi Xue on 2017/11/2.
//  Copyright © 2017年 ShineZone Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerViewController : UIViewController


- (instancetype)initWithRootViewController:(UIViewController *)rootViewController;

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated;

- (NSArray *)popViewControllerAnimated:(BOOL)animated;

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated;

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end
