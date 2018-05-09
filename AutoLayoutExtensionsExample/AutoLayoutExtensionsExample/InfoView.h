//
//  InfoView.h
//  PopupView
//
//  Created by Duc Hung Trinh on 18/4/18.
//  Copyright © 2018 Hung. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InfoView : UIView

@property (nonatomic, strong) UIImage *logo;

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *detail;

@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *duration;

@end

NS_ASSUME_NONNULL_END
