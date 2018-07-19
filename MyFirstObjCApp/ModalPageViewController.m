//
//  ModalPageViewController.m
//  MyFirstObjCApp
//
//  Created by 布丁丸子酱 on 2018/7/19.
//  Copyright © 2018年 布丁丸子酱. All rights reserved.
//

#import "ModalPageViewController.h"

@interface ModalPageViewController ()

@end

@implementation ModalPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
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
