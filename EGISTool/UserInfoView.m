//
//  UserInfoView.m
//  EGISTool
//
//  Created by JAMES.TAN on 15/10/15.
//  Copyright © 2015年 ewj01. All rights reserved.
//

#import "UserInfoView.h"
#import "LocationChooseView.h"

@interface UserInfoView ()

@end

@implementation UserInfoView

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goNextView {
    
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:[[LocationChooseView alloc]init]];
    [self presentViewController:navi animated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
