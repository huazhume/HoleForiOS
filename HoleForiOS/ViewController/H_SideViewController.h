//
//  H_SideViewController.h
//  HoleForiOS
//
//  Created by len on 17/2/14.
//  Copyright © 2017年 huaral. All rights reserved.
//

#import <UIKit/UIKit.h>

//closeSiderBar
@protocol closeSiderDelegate <NSObject>

-(void)closeSiderDelegate;

@end

@interface H_SideViewController : UIViewController
@property (nonatomic ,assign) id<closeSiderDelegate>delegate;
@end
