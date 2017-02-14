//
//  ViewController.m
//  HoleForiOS
//
//  Created by huaral on 2017/2/14.
//  Copyright © 2017年 huaral. All rights reserved.
//

#import "ViewController.h"

#import "H_SideViewController.h"
#import "H_HomeNavigationBarView.h"

@interface ViewController ()<showSiderDelegate,closeSiderDelegate>
{
    H_SideViewController * _leftSiderVC;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:248/255.0 green:248/255.0 blue:248/255.0 alpha:1];
    // Do any additional setup after loading the view, typically from a nib.
    [self configSideView];
}


//添加侧边栏 和 右侧栏

- (void)configSideView{
    
    //navigationBar
    H_HomeNavigationBarView * navigationBar = [[[NSBundle mainBundle]loadNibNamed:@"H_HomeNavigationBarView" owner:self options:nil]lastObject];
    navigationBar.frame = CGRectMake(0, 0, SCREEN_WIDTH, 60);
    [self.view addSubview:navigationBar];
    navigationBar.delegate = self;
    
    //leftSiderbar
    _leftSiderVC = [[H_SideViewController alloc]init];
    _leftSiderVC.view.frame = CGRectMake(-SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    [self.view addSubview:_leftSiderVC.view];
    
    _leftSiderVC.delegate = self;
}


#pragma mark - delegate
-(void)showSiderBar{
    NSLog(@"showSiderBar");
    [UIView animateWithDuration:0.5 animations:^{
        _leftSiderVC.view.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }];
}
-(void)closeSiderDelegate{
    NSLog(@"closeSiderBar");
    [UIView animateWithDuration:0.5 animations:^{
        _leftSiderVC.view.frame = CGRectMake(-SCREEN_WIDTH,0, SCREEN_WIDTH, SCREEN_HEIGHT);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
