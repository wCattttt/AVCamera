//
//  PhotoView.h
//  Opencv_test
//
//  Created by 魏唯隆 on 16/7/21.
//  Copyright © 2016年 魏唯隆. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TakePhotoSuccess)(void);

@interface PhotoView : UIView

- (instancetype)initWithFrame:(CGRect)frame withPositionDevice:(BOOL)isBack withTakePhotoSuccess:(TakePhotoSuccess)takePhotoSuccess;

- (void)startRunning;

- (void)stopRunning;
@end
