//
//  DetailPageViewController.m
//  MyFirstObjCApp
//
//  Created by 布丁丸子酱 on 2018/7/18.
//  Copyright © 2018年 布丁丸子酱. All rights reserved.
//

#import "DetailPageViewController.h"

@interface DetailPageViewController ()

@end

@implementation DetailPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)navToFinalPage:(id)sender {
    UIViewController *nextVC = [self.storyboard instantiateViewControllerWithIdentifier:@"FinalPage"];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (IBAction)navToModalPage:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"SecondStoryboard" bundle:nil];
    UIViewController *nextVC = [storyboard instantiateViewControllerWithIdentifier:@"ModalPage"];
    [self.navigationController presentViewController:nextVC animated:YES completion:nil];
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
