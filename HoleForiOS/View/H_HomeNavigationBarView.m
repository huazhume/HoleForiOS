//
//  H_HomeNavigationBarView.m
//  HoleForiOS
//
//  Created by len on 17/2/14.
//  Copyright © 2017年 huaral. All rights reserved.
//

#import "H_HomeNavigationBarView.h"

@implementation H_HomeNavigationBarView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)holeDetailBtnClicked:(id)sender {
    [self.delegate showSiderBar];
}



@end
