//
//  ViewController.m
//  MyFirstObjCApp
//
//  Created by 布丁丸子酱 on 2018/6/18.
//  Copyright © 2018年 布丁丸子酱. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *countNumLabel;
@property UIStoryboard *firstSubSB;
@property int countNum;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.countNum = 0;
    self.firstSubSB = [UIStoryboard storyboardWithName:@"FirstSub" bundle:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Tap:(id)sender {
    self.countNum++;
    NSString *showText = [NSString stringWithFormat:@"%d", self.countNum];
    NSLog(@"%d times", self.countNum);
    [self.countNumLabel setText: showText];
}

- (IBAction)NavToNextPage:(id)sender {
    NSLog(@"will jump");
//    UIViewController *nextVC = [[FirstSubController alloc] init];
    UIViewController *nextVC = [self.firstSubSB instantiateViewControllerWithIdentifier:@"first-sub"];
    NSLog(@"%p", nextVC);
    [self.navigationController pushViewController:nextVC animated:YES];
}

@end
