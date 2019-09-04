//
//  OCVC.m
//  LifeCycle
//
//  Created by clobotics_ccp on 2019/9/4.
//  Copyright © 2019 cool-ccp. All rights reserved.
//

#import "OCVC.h"

@interface OCVC ()

@end

@implementation OCVC

+ (void)load {
    NSLog(@"%s, %s", __FILE__, __func__);
}

+ (void) initialize {
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%s, %s", __FILE__, __func__);
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        NSLog(@"%s, %s", __FILE__, __func__);
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        NSLog(@"%s, %s", __FILE__, __func__);
    }
    return self;
}

- (void)loadView {
    [super loadView];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s, %s", __FILE__, __func__);
    self.view.backgroundColor = [UIColor grayColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)dealloc
{
    NSLog(@"%s, %s", __FILE__, __func__);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
