
//  Copyright © 2018年 com.w1520it. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RLLeftSlideViewController.h"

@interface RLLeftSlideManager : NSObject
@property (nonatomic,strong) RLLeftSlideViewController *LeftSlideVC;
@property (strong, nonatomic) UINavigationController *mainNavigationController;
+ (instancetype)sharedIncetance;

@end
