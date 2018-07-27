
//  Copyright © 2018年 com.w1520it. All rights reserved.
//

#import "RLLeftSlideManager.h"

@implementation RLLeftSlideManager
static id _instance;

+ (instancetype)sharedIncetance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });
    return _instance;
}

@end
