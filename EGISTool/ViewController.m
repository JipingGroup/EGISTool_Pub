//
//  ViewController.m
//  EGISTool
//
//  Created by jp007 on 15/9/3.
//  Copyright (c) 2015年 ewj01. All rights reserved.
//

#import "ViewController.h"
#import <CoreBluetooth/CoreBluetooth.h>
#import "LocationChooseView.h"
#import "UserInfoView.h"

@interface ViewController ()<CBCentralManagerDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *backGroud;

@property (nonatomic ,strong) CBCentralManager *manager;

@property (weak, nonatomic) IBOutlet UIButton *nextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
    
    self.title = @"walkie-Textie";
    self.navigationController.navigationBar.backgroundColor = [UIColor blackColor];
    UIBarButtonItem *sureBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(chooseLocation)];
    self.navigationItem.rightBarButtonItem = sureBtn;
    
    _backGroud.image = [UIImage imageNamed:@"pay_detail@2x"];
    
    _nextView.imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    [_nextView addTarget:self action:@selector(goNextView) forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)goNextView
{
    [self presentViewController:[[UserInfoView alloc] init] animated:YES completion:nil];
}


- (void)chooseLocation
{
    [self presentViewController:[[UserInfoView alloc] init] animated:YES completion:nil];
}



- (void)centralManagerDidUpdateState:(CBCentralManager *)central
{
    NSLog(@"%ld%s",(long)central.state,__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
