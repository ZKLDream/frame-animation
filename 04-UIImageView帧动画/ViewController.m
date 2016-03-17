//
//  ViewController.m
//  04-UIImageView帧动画
//
//  Created by 千锋 on 16/2/17.
//  Copyright © 2016年 千锋. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.创建一个背景图
    UIImageView *backgroundView=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    //设置图片(设置静态图片)
    backgroundView.image=[UIImage imageNamed:@"back2.jpg"];
    //将图片显示到界面上
    [self.view addSubview:backgroundView];
    
    //2.使用uiimageview显示动图
    
    //创建UIImageview对象
    UIImageView *birdImageView=[[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    
    //设置静态图片（动画停止了，UIImageview上会显示静态图片)
    birdImageView.image=[UIImage imageNamed:@"DOVE 1.png"];
    //将图片显示在界面上
    [self.view addSubview:birdImageView];
                                             
    //播放帧动画
    //a.设置动画图片组
    //需要传入一个数组， 这个数组中的数组元素必须都是UIImage的对象
    //创建一个空的可变数组，用来存放每一张图片
    NSMutableArray *animationImages=[[NSMutableArray alloc]init];
    
    for (int i=1; i<19; i++) {
        //拼接图片名
        NSString *imageName=[NSString stringWithFormat:@"DOVE %d.png",i];
        //创建图片对象
        UIImage *image=[UIImage imageNamed:imageName];
        
        //将图片添加到数组中
        [animationImages addObject:image];
    }
    //设置动画图片组
    [birdImageView setAnimationImages:animationImages];
    
    //b.设置动画时间(播放完所有图片所需要的时间)单位s
    [birdImageView setAnimationDuration:3];
 
    //c.设置动画重复播放次数(如果想要动画播放无数次，设置为0)
    [birdImageView setAnimationRepeatCount:0];
    
    
    //d.开始播放动画
    [birdImageView startAnimating];
    
    //e.停止动画
 //   [birdImageView stopAnimating];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
