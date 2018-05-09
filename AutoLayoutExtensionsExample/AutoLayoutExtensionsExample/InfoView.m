//
//  InfoView.m
//  PopupView
//
//  Created by Duc Hung Trinh on 18/4/18.
//  Copyright © 2018 Hung. All rights reserved.
//

#import "InfoView.h"
#import "UIView+Autolayout.h"

const CGFloat kHorizontalPaddingDefault = 16;
const CGFloat kVerticalPaddingDefault = 8;

const CGFloat kLogoSize = 20;

@interface InfoView()

@property (nonatomic, strong) UIImageView *logoView;

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *detailLabel;

@property (nonatomic, strong) UILabel *typeLabel;
@property (nonatomic, strong) UILabel *durationLabel;

@end

@implementation InfoView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    if (self) {
        self.logoView = [[UIImageView alloc] initWithFrame:CGRectZero];
        [self addSubview:self.logoView];
        
        self.titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.titleLabel.textColor = [UIColor colorWithRed:84/255 green:76/255 blue:99/255 alpha:1.0];
        self.titleLabel.font = [UIFont systemFontOfSize:16];
        [self addSubview:self.titleLabel];
        
        self.detailLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.detailLabel.textColor = [UIColor colorWithRed:137/255 green:130/255 blue:148/255 alpha:0.74];
        self.detailLabel.font = [UIFont systemFontOfSize:12];
        self.detailLabel.numberOfLines = 0;
        [self addSubview:self.detailLabel];
        
        self.typeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.typeLabel.textAlignment = NSTextAlignmentRight;
        [self addSubview:self.typeLabel];
        
        self.durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        self.durationLabel.textAlignment = NSTextAlignmentRight;
        [self addSubview:self.durationLabel];
        
        [self configureConstraints];
    }
    
    return self;
}

#pragma mark - ConfigureConstraints

- (void)configureConstraints {
    
    [NSLayoutConstraint deactivateConstraints:self.constraints];
    
    NSMutableArray<NSLayoutConstraint *> *constraints = [NSMutableArray array];
    
    // Logo view
    self.logoView.translatesAutoresizingMaskIntoConstraints = NO;
    [constraints addObject:[self.logoView constraintDimension:NSLayoutAttributeWidth relation:NSLayoutRelationEqual constant:kLogoSize]];
    [constraints addObject:[self.logoView constraintDimension:NSLayoutAttributeHeight relation:NSLayoutRelationEqual constant:kLogoSize]];
    [constraints addObject:[self.logoView constraintLeading:self constant:kHorizontalPaddingDefault]];
    [constraints addObject:[self.logoView alignWith:self edge:NSLayoutAttributeCenterY offsetBy:0]];
    
    // Title label
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [constraints addObject:[self.titleLabel constraintTop:self constant:kVerticalPaddingDefault]];
    [constraints addObject:[self.titleLabel layoutAfter:self.logoView horizontalPadding:kVerticalPaddingDefault]];
    [self.titleLabel increaseDefaultVerticalCompressionResistanceAndHuggingPriority:-1];
    
    // Detail Label
    self.detailLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [constraints addObject:[self.detailLabel layoutBelow:self.titleLabel verticalPadding:kVerticalPaddingDefault]];
    [constraints addObject:[self.detailLabel alignWith:self.titleLabel edge:NSLayoutAttributeLeading offsetBy:0]];
    [constraints addObject:[self.detailLabel constraintBottom:self constant:-kVerticalPaddingDefault]];
    [self.detailLabel increaseDefaultHorizontalCompressionResistanceAndHuggingPriority:-1];
    
    // Type Label
    self.typeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [constraints addObject:[self.typeLabel layoutAfter:self.titleLabel horizontalPadding:kVerticalPaddingDefault]];
    [constraints addObject:[self.typeLabel alignWith:self.titleLabel edge:NSLayoutAttributeCenterY offsetBy:0]];
    [constraints addObject:[self.typeLabel constraintTrailing:self constant:-kHorizontalPaddingDefault]];
    [self.typeLabel increaseDefaultVerticalCompressionResistanceAndHuggingPriority:-1];
    [self.typeLabel increaseDefaultHorizontalCompressionResistanceAndHuggingPriority:-1];
    
    // Duration Label
    self.durationLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [constraints addObject:[self.durationLabel layoutAfter:self.detailLabel horizontalPadding:kVerticalPaddingDefault]];
    [constraints addObject:[self.durationLabel alignWith:self.detailLabel edge:NSLayoutAttributeCenterY offsetBy:0]];
    [constraints addObject:[self.durationLabel constraintTrailing:self constant:-kHorizontalPaddingDefault]];
    
    [self addConstraints:constraints];
}

#pragma mark - Accessors

- (void)setLogo:(UIImage *)logo {
    _logo = logo;
    self.logoView.image = logo;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleLabel.text = title;
}

- (void)setDetail:(NSString *)detail {
    _detail = detail;
    self.detailLabel.text = detail;
}

- (void)setType:(NSString *)type {
    _type = type;
    self.typeLabel.text = type;
}

- (void)setDuration:(NSString *)duration {
    _duration = duration;
    self.durationLabel.text = duration;
}

@end
