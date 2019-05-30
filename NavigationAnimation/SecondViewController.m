//
//  SecondViewController.m
//  NavigationAnimation
//
//  Created by Civet on 2019/5/28.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(40, 40, 260, 380);
    _imageView.image = [UIImage imageNamed:@"14.jpg"];
    [self.view addSubview:_imageView];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
   
    CATransition *anim = [CATransition animation];
    //设置动画的时间长度
    anim.duration = 1;
    //设置动画的类型，决定动画的效果形式
    //@"cube",@"moveIn",@"reveal",@"fade",@"pageCurl",@"pageUnCurl",@"suckEffect",@"oglFlip",@"rippleEffect"
    anim.type = @"rippleEffect";
    //设置动画的子类型，例如动画的方向
    anim.subtype = kCATransitionFromLeft;
    //设置动画的轨迹
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //将动画设置添加到动画上
    [self.navigationController.view.layer addAnimation:anim forKey:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
