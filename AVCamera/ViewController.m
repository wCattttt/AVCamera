//
//  ViewController.m
//  AVCamera
//
//  Created by 魏唯隆 on 2017/4/25.
//  Copyright © 2017年 魏唯隆. All rights reserved.
//

#import "ViewController.h"
#import "PhotoView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PhotoView *photoView = [[PhotoView alloc] initWithFrame:[UIScreen mainScreen].bounds withPositionDevice:YES withTakePhotoSuccess:^{
        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"提示" message:@"保存成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alertCon addAction:cancel];
        [self presentViewController:alertCon animated:YES completion:nil];
    }];
    [self.view addSubview:photoView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
