//
//  AViewController.m
//  A
//
//  Created by 何凯楠 on 2017/3/24.
//  Copyright © 2017年 HeXiaoBa. All rights reserved.
//

#import "AViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
#import <B_Category/CTMediator+B.h>
#import <CTMediator/CTMediator.h>

@interface AViewController ()

@property (nonatomic, nullable, strong) UIButton *pushButton;

@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)pushButtonEvent:(UIButton *)button
{
    NSString *contentText = @"this is form A viewController";
    UIViewController *b = [[CTMediator sharedInstance] B_viewControllerWithContentText:contentText];
    [self.navigationController pushViewController:b animated:YES];
}

#pragma mark- Setter && Getter
- (UIButton *)pushButton
{
    if (!_pushButton) {
        _pushButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushButton setTitle:@"push B viewController" forState:UIControlStateNormal];
        [_pushButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_pushButton addTarget:self action:@selector(pushButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
