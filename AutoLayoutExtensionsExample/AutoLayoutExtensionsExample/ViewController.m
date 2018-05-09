//
//  ViewController.m
//  AutoLayoutExtensionsExample
//
//  Created by Duc Hung Trinh on 9/5/18.
//  Copyright © 2018 Hung. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Autolayout.h"
#import "InfoView.h"

@interface ViewController ()

@property (nonatomic, strong) InfoView *infoView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupViews];
    [self configureConstraints];
    
    self.infoView.logo = [UIImage imageNamed:@"explore"];
    self.infoView.title = @"A title";
    self.infoView.detail = @"Do any additional setup after loading the view, typically from a nib.";
    self.infoView.type = @"type";
    self.infoView.duration = @"2h10m";
}

- (void)setupViews {
    // username textfield
    self.infoView = [[InfoView alloc] initWithFrame:CGRectZero];
    self.infoView.layer.borderColor = [UIColor blackColor].CGColor;
    self.infoView.layer.borderWidth = 1.0;
    [self.view addSubview:self.infoView];
}

- (void)configureConstraints {
    self.infoView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraint:[self.infoView alignWith:self.view edge:NSLayoutAttributeCenterX offsetBy:0]];
    [self.view addConstraint:[self.infoView alignWith:self.view edge:NSLayoutAttributeCenterY offsetBy:0]];
    [self.view addConstraint:[self.infoView alignWith:self.view edge:NSLayoutAttributeLeading offsetBy:10]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
