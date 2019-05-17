# AVCamera
AVCapturePhotoOutput自定义相机

![Image text](https://github.com/weiweilong/AVCamera/blob/master/AVCamera/IMG_7611.PNG)


将PhotoView.h/PhotoView.m 导入

使用简单

    PhotoView *photoView = [[PhotoView alloc] initWithFrame:[UIScreen mainScreen].bounds withPositionDevice:YES withTakePhotoSuccess:^{
        UIAlertController *alertCon = [UIAlertController alertControllerWithTitle:@"提示" message:@"保存成功" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alertCon addAction:cancel];
        [self presentViewController:alertCon animated:YES completion:nil];
    }];
    [self.view addSubview:photoView];
    
