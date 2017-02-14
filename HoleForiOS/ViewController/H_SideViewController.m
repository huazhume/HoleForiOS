//
//  H_SideViewController.m
//  HoleForiOS
//
//  Created by len on 17/2/14.
//  Copyright © 2017年 huaral. All rights reserved.
//

#import "H_SideViewController.h"

@interface H_SideViewController (){
    UIView * _occlusionView;
}
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tableView_width;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

#define TABLEVIEW_WIDTH 0.80 * SCREEN_WIDTH

#define OCCLUSION_WIDTH (SCREEN_WIDTH - TABLEVIEW_WIDTH)

@implementation H_SideViewController


-(void)viewWillAppear:(BOOL)animated{
    self.tableView_width.constant = TABLEVIEW_WIDTH;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initBaceViews];
}
-(void)initBaceViews{
    UIView * headerView = [[[NSBundle mainBundle]loadNibNamed:@"H_SiderTableHeaderView" owner:self options:nil]lastObject];
    headerView.frame = CGRectMake(0, 0, TABLEVIEW_WIDTH, 150);
    self.tableView.tableHeaderView = headerView;
//    self.tableView.tableFooterView = [[UIView alloc]init];
}
- (IBAction)occlusionViewTapClicked:(id)sender {
    NSLog(@"occlusionViewClicked");
    [self.delegate closeSiderDelegate];
    
}

#pragma mark - delegate


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
