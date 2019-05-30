//
//  FirstViewController.m
//  NavigationAnimation
//
//  Created by Civet on 2019/5/28.
//  Copyright © 2019年 PandaTest. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(40, 40, 260, 380);
    _imageView.image = [UIImage imageNamed:@"4.jpg"];
    [self.view addSubview:_imageView];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //定义一个动画变换对象，层动画对象
    //类方法获取动画对象
    CATransition *anim = [CATransition animation];
    //设置动画的时间长度
    anim.duration = 1;
    //设置动画的类型，决定动画的效果形式
    //@"cube",@"moveIn",@"reveal",@"fade",@"pageCurl",@"pageUnCurl",@"suckEffect",@"oglFlip",@"rippleEffect"
    anim.type = @"rippleEffect";
    //设置动画的子类型，例如动画的方向
    anim.subtype = kCATransitionFromRight;
    //设置动画的轨迹
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    //将动画设置添加到动画上
    [self.navigationController.view.layer addAnimation:anim forKey:nil];
    
    SecondViewController *secondVC  = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
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
