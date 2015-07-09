//
//  ViewController.m
//  ALActionSheetView
//
//  Created by WangQi on 7/4/15.
//  Copyright (c) 2015 WangQi. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *_testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    _testButton.frame = CGRectMake((self.view.frame.size.width-100)/2, 100, 100, 37);
    _testButton.backgroundColor = [UIColor blueColor];
    [_testButton setTitle:@"测试" forState:UIControlStateNormal];
    [_testButton addTarget:self action:@selector(test) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_testButton];
}

- (void)test
{
    //ALActionSheetView *actionSheetView = [ALActionSheetView showActionSheetWithTitle:@"测试" cancelButtonTitle:@"取消" destructiveButtonTitle:@"确定" otherButtonTitles:@[@"测试1", @"测试2"] handler:^(ALActionSheetView *actionSheetView, NSInteger buttonIndex) {
       // NSLog(@"%zd", buttonIndex);
   // }];
    ALActionSheetView *actionSheetView = [[ALActionSheetView alloc] initWithTitle:@"ceshi" cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Yes" otherButtonTitles:@[@"Ceshi1",@"Ceshi2"] handler:^(ALActionSheetView *actionSheetView, NSInteger buttonIndex) {
        switch (buttonIndex) {
            case 0:
                NSLog(@"CeShi1");
                break;
            case 1:
                NSLog(@"CeShi2");
                break;
            case 2:
                NSLog(@"QueDing");
                break;
            default:
                NSLog(@"Cancel");
                break;
        }
    }];
    [actionSheetView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
