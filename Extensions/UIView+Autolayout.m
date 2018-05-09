//
//  UIView+Autolayout.m
//  Example
//
//  Created by Duc Hung Trinh on 19/4/18.
//  Copyright © 2018 Hung. All rights reserved.
//

#import "UIView+Autolayout.h"

@implementation UIView (Autolayout)

- (NSLayoutConstraint *)layoutBelow:(UIView *)otherView verticalPadding:(CGFloat)padding {
    return [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:otherView attribute:NSLayoutAttributeBottom multiplier:1 constant:padding];
}

- (NSLayoutConstraint *)layoutAfter:(UIView *)otherView horizontalPadding:(CGFloat)padding {
    return [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:otherView attribute:NSLayoutAttributeRight multiplier:1 constant:padding];
}

- (NSLayoutConstraint *)alignWith:(UIView *)otherView edge:(NSLayoutAttribute)edge offsetBy:(CGFloat)offset {
    return [NSLayoutConstraint constraintWithItem:self attribute:edge relatedBy:NSLayoutRelationEqual toItem:otherView attribute:edge multiplier:1 constant:offset];
}

- (NSLayoutConstraint *)alignWith:(UIView *)otherView edge:(NSLayoutAttribute)edge toEdge:(NSLayoutAttribute)toEdge offsetBy:(CGFloat)offset {
    return [NSLayoutConstraint constraintWithItem:self attribute:edge relatedBy:NSLayoutRelationEqual toItem:otherView attribute:toEdge multiplier:1 constant:offset];
}

- (NSLayoutConstraint *)constraintTop:(UIView *)toView constant:(CGFloat)constant {
    return [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:toView attribute:NSLayoutAttributeTop multiplier:1 constant:constant];
}

- (NSLayoutConstraint *)constraintLeading:(UIView *)toView constant:(CGFloat)constant {
    return [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:toView attribute:NSLayoutAttributeLeading multiplier:1 constant:constant];
}

- (NSLayoutConstraint *)constraintTrailing:(UIView *)toView constant:(CGFloat)constant {
    return [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:toView attribute:NSLayoutAttributeTrailing multiplier:1 constant:constant];
}

- (NSLayoutConstraint *)constraintBottom:(UIView *)toView constant:(CGFloat)constant {
    return [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:toView attribute:NSLayoutAttributeBottom multiplier:1 constant:constant];
}

- (NSLayoutConstraint *)constraintDimension:(NSLayoutAttribute)dimension relation:(NSLayoutRelation)relation constant:(CGFloat)constant {
    return [NSLayoutConstraint constraintWithItem:self attribute:dimension relatedBy:relation toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:constant];
}

- (NSLayoutConstraint *)constraintDimension:(NSLayoutAttribute)dimension toView:(UIView *)toView relation:(NSLayoutRelation)relation {
    return [NSLayoutConstraint constraintWithItem:self attribute:dimension relatedBy:relation toItem:toView attribute:dimension multiplier:1 constant:0];
}

- (void)increaseDefaultHorizontalCompressionResistanceAndHuggingPriority:(NSInteger)higherThanDefault {
    [self setContentHuggingPriority:UILayoutPriorityDefaultLow + higherThanDefault
                            forAxis:UILayoutConstraintAxisHorizontal];
    
    [self setContentCompressionResistancePriority:UILayoutPriorityDefaultHigh + higherThanDefault
                                          forAxis:UILayoutConstraintAxisHorizontal];
}

- (void)increaseDefaultVerticalCompressionResistanceAndHuggingPriority:(NSInteger)higherThanDefault {
    [self setContentHuggingPriority:UILayoutPriorityDefaultLow + higherThanDefault
                            forAxis:UILayoutConstraintAxisVertical];
    
    [self setContentCompressionResistancePriority:UILayoutPriorityDefaultHigh + higherThanDefault
                                          forAxis:UILayoutConstraintAxisVertical];
}

@end
