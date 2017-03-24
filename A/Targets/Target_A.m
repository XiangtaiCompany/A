//
//  Target_A.m
//  A
//
//  Created by 何凯楠 on 2017/3/24.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}

@end
