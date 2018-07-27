
//  Copyright © 2018年 com.w1520it. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "DKNightVersionManager.h"
#import "RLViewController.h"
#import "RLLeftSlideManager.h"
#import "RLLeftSlideViewController.h"
#import "defind.h"

@interface MainViewController ()
{
    NSArray *imageArr;
}

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    FirstViewController *firstVC = [[FirstViewController alloc]init];
    firstVC.title = @"首页";
    UINavigationController *firstNVC = [[UINavigationController alloc]initWithRootViewController:firstVC];
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    secondVC.title = @"个人";
    UINavigationController *secondNVC = [[UINavigationController alloc]initWithRootViewController:secondVC];
    self.viewControllers = @[firstNVC,secondNVC];
}


-(void)changeLight{
    NSLog(@"daindad");
    if ([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) {
        [DKNightVersionManager dawnComing];
    } else {
        [DKNightVersionManager nightFalling];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
