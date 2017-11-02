//
//  ContainerViewController.m
//  ContainerViewControllerTest
//
//  Created by Shuaiqi Xue on 2017/11/2.
//  Copyright © 2017年 ShineZone Inc. All rights reserved.
//

#import "ContainerViewController.h"

#import "FirstViewController.h"

@interface ContainerViewController ()

@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (nonatomic, strong) UIViewController *currentShowViewController;


@end

@implementation ContainerViewController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark - life cycle
- (void)dealloc {
    NSLog(@"%s", __FUNCTION__);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Touch Events
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:firstVC];
    [self pushViewController:navigationController animated:YES];
    navigationController.view.frame = self.contentView.frame;
}

- (IBAction)dismissViewController:(id)sender {
    
    [self dismissViewControllerAnimated:NO completion:^{
        NSLog(@"dismissViewController completion");
    }];
}

#pragma mark - Public Push pop
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);

    NSLog(@"willMoveToParentViewController");
    [self.currentShowViewController willMoveToParentViewController:nil];
    
    NSLog(@"addChildViewController");
    [self addChildViewController:viewController];
    NSLog(@"addSubview");
    [self.view addSubview:viewController.view];
    NSLog(@"didMoveToParentViewController");
    [viewController didMoveToParentViewController:self];
    
    NSLog(@"removeFromSuperview");
    [self.currentShowViewController.view removeFromSuperview];
//    NSLog(@"removeFromParentViewController");
//    [self.currentShowViewController removeFromParentViewController];
    
    self.currentShowViewController = viewController;
    
    NSLog(@"childViewControllers===%@", self.childViewControllers);
}

- (NSArray *)popViewControllerAnimated:(BOOL)animated {
    NSMutableArray *popViewControllers = [NSMutableArray array];
    
    return popViewControllers;
}

- (NSArray *)popToRootViewControllerAnimated:(BOOL)animated {
    NSMutableArray *popViewControllers = [NSMutableArray array];
    
    return popViewControllers;
}

- (NSArray *)popToViewController:(UIViewController *)viewController animated:(BOOL)animated {
    NSMutableArray *popViewControllers = [NSMutableArray array];
    
    return popViewControllers;
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
