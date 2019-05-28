//
//  ViewController.m
//  ZS_ZJDemo
//
//  Created by 张帅 on 2019/5/28.
//  Copyright © 2019 Black. All rights reserved.
//

#import "ViewController.h"
#import <ZSNetworking/ZSNetModel.h>
#import <ZSNetworking/ZSTestModel.h>
#import <ZSLogin/ZS_LoginModel.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    ZSNetModel *model = [[ZSNetModel alloc]init];
    model.name = @"你好";
    model.sex = @"我是男的";
    [model zs_test];
    NSLog(@"name==%@,sex==%@",model.name,model.sex);
    
    ZSTestModel *testModel = [[ZSTestModel alloc]init];
    [testModel zs_test];
    
    ZS_LoginModel *loginModel = [[ZS_LoginModel alloc]init];
    loginModel.name = @"你好";
    loginModel.sex = YES;
    loginModel.height = 34.5;
    [loginModel zs_loginAction];
}


@end
