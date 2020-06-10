//
//  UIView+customAddConstraint.h
//  Libratone iOS
//
//  Created by 管宇杰 on 2017/5/2.
//  Copyright © 2017年 Libratone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LBLayout)


/**
 快速设置成子控件和父控件一样大。

 @param subview 子控件
 */
+ (void)LBAddConstraintAroundSubView:(UIView *)subview;

//该方法只能用在 约束对象是子控件和父控件。
+ (void)LBAddEdgeConstraint:(NSLayoutAttribute)edge subview:(UIView *)subview;

+ (void)LBAddEdgeConstraint:(NSLayoutAttribute)edge superview:(UIView *)superview subview:(UIView *)subview;

// edge 只能用宽高，不能用其他约束。其他约束是无效的。
+ (void)LBAddSelfConstraint:(NSLayoutAttribute)edge view:(UIView *)view constant:(CGFloat)constant;

// 只适合父控件，子控件的边距控制
+ (NSLayoutConstraint *)LBAddMarginConstraint:(NSLayoutAttribute)edge view:(UIView *)view constant:(CGFloat)constant;

// 相对父控件x,y都居中
- (void)LBAddStandardCenterConstraint;

@end
