//
//  FirstViewController.m
//  ContainerViewControllerTest
//
//  Created by Shuaiqi Xue on 2017/11/2.
//  Copyright © 2017年 ShineZone Inc. All rights reserved.
//

#import "FirstViewController.h"

#import "SecondViewController.h"
#import "ContainerViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%s", __FUNCTION__);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%s", __FUNCTION__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSLog(@"%s", __FUNCTION__);
}

#pragma mark - Event Response
- (IBAction)popButtonClick:(id)sender {
    [(ContainerViewController *)self.parentViewController  popViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    [(ContainerViewController *)self.parentViewController pushViewController:secondViewController animated:YES];
    secondViewController.view.frame = self.view.frame;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
