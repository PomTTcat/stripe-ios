//
//  UIView+customAddConstraint.m
//  Libratone iOS
//
//  Created by 管宇杰 on 2017/5/2.
//  Copyright © 2017年 Libratone. All rights reserved.
//

#import "UIView+customAddConstraint.h"

@implementation UIView (LBLayout)


+ (void)LBAddConstraintAroundSubView:(UIView *)subview {
    subview.translatesAutoresizingMaskIntoConstraints = NO;
    [UIView LBAddEdgeConstraint:NSLayoutAttributeLeft subview:subview];
    [UIView LBAddEdgeConstraint:NSLayoutAttributeRight subview:subview];
    [UIView LBAddEdgeConstraint:NSLayoutAttributeTop subview:subview];
    [UIView LBAddEdgeConstraint:NSLayoutAttributeBottom subview:subview];
}

+ (void)LBAddEdgeConstraint:(NSLayoutAttribute)edge subview:(UIView *)subview {
    [subview.superview addConstraint:[NSLayoutConstraint constraintWithItem:subview
                                                          attribute:edge
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:subview.superview
                                                          attribute:edge
                                                         multiplier:1
                                                           constant:0]];
}

+ (void)LBAddEdgeConstraint:(NSLayoutAttribute)edge superview:(UIView *)superview subview:(UIView *)subview {
    [superview addConstraint:[NSLayoutConstraint constraintWithItem:subview
                                                          attribute:edge
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:superview
                                                          attribute:edge
                                                         multiplier:1
                                                           constant:0]];
}


+ (NSLayoutConstraint *)LBAddMarginConstraint:(NSLayoutAttribute)edge view:(UIView *)view constant:(CGFloat)constant {
    if ((edge == NSLayoutAttributeWidth) || (edge == NSLayoutAttributeHeight)) {
        NSLog(@"edge not accept NSLayoutAttributeWidth or NSLayoutAttributeHeight");
        return nil;
    }
    NSLayoutConstraint *layoutConstraint = [NSLayoutConstraint constraintWithItem:view.superview
                                                                        attribute:edge
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:view
                                                                        attribute:edge
                                                                       multiplier:1
                                                                         constant:constant];
    [view.superview addConstraint:layoutConstraint];
    return layoutConstraint;
}

+ (void)LBAddSelfConstraint:(NSLayoutAttribute)edge view:(UIView *)view constant:(CGFloat)constant {
    if (!((edge == NSLayoutAttributeWidth) || (edge == NSLayoutAttributeHeight))) {
        NSLog(@"edge only accept NSLayoutAttributeWidth or NSLayoutAttributeHeight");
        return;
    }
    [view addConstraint:[NSLayoutConstraint constraintWithItem:view
                                                     attribute:edge
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:nil
                                                     attribute: NSLayoutAttributeNotAnAttribute
                                                    multiplier:1
                                                      constant:constant]];
}

- (void)LBAddStandardCenterConstraint{
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [UIView LBAddEdgeConstraint:NSLayoutAttributeCenterX superview:self.superview subview:self];
    [UIView LBAddEdgeConstraint:NSLayoutAttributeCenterY superview:self.superview subview:self];
}

@end
