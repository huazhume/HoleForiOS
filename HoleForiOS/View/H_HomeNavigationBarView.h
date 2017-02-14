//
//  H_HomeNavigationBarView.h
//  HoleForiOS
//
//  Created by len on 17/2/14.
//  Copyright © 2017年 huaral. All rights reserved.
//

#import <UIKit/UIKit.h>

//delegate
@protocol showSiderDelegate <NSObject>
-(void)showSiderBar;
@end

@interface H_HomeNavigationBarView : UIView

@property (nonatomic,assign)id<showSiderDelegate>delegate;
@end
