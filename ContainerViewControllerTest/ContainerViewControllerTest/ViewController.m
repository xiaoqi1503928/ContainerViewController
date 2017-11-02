//
//  ViewController.m
//  ContainerViewControllerTest
//
//  Created by Shuaiqi Xue on 2017/11/2.
//  Copyright © 2017年 ShineZone Inc. All rights reserved.
//

#import "ViewController.h"

#import "ContainerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)popUpContainerVC:(id)sender {
        
    ContainerViewController *containerViewController = [[ContainerViewController alloc] init];
    containerViewController.view.frame = CGRectMake(50, 100, CGRectGetWidth(self.view.frame) - 100, CGRectGetWidth(self.view.frame) - 200);
    containerViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self presentViewController:containerViewController animated:NO completion:^{
       NSLog(@"presentViewController completion");
        containerViewController.view.backgroundColor = [UIColor colorWithRed:0.f green:0.f blue:0.f alpha:.4];
    }];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
