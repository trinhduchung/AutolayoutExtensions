//
//  UIView+Autolayout.h
//  Example
//
//  Created by Duc Hung Trinh on 19/4/18.
//  Copyright © 2018 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Autolayout)

- (NSLayoutConstraint *)layoutBelow:(UIView *)otherView verticalPadding:(CGFloat)padding;

- (NSLayoutConstraint *)layoutAfter:(UIView *)otherView horizontalPadding:(CGFloat)padding;

- (NSLayoutConstraint *)alignWith:(UIView *)otherView edge:(NSLayoutAttribute)edge offsetBy:(CGFloat)offset;

- (NSLayoutConstraint *)alignWith:(UIView *)otherView edge:(NSLayoutAttribute)edge toEdge:(NSLayoutAttribute)toEdge offsetBy:(CGFloat)offset;

- (NSLayoutConstraint *)constraintTop:(UIView *)toView constant:(CGFloat)constant;

- (NSLayoutConstraint *)constraintLeading:(UIView *)toView constant:(CGFloat)constant;

- (NSLayoutConstraint *)constraintTrailing:(UIView *)toView constant:(CGFloat)constant;

- (NSLayoutConstraint *)constraintBottom:(UIView *)toView constant:(CGFloat)constant;

- (NSLayoutConstraint *)constraintDimension:(NSLayoutAttribute)dimension relation:(NSLayoutRelation)relation constant:(CGFloat)constant;

- (NSLayoutConstraint *)constraintDimension:(NSLayoutAttribute)dimension toView:(UIView *)toView relation:(NSLayoutRelation)relation;

- (void)increaseDefaultHorizontalCompressionResistanceAndHuggingPriority:(NSInteger)value;

- (void)increaseDefaultVerticalCompressionResistanceAndHuggingPriority:(NSInteger)value;

@end

NS_ASSUME_NONNULL_END

