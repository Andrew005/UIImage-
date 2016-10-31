//
//  UIImage+Context.h
//  BNProject
//
//  Created by vera on 16/9/22.
//  Copyright © 2016年 KFH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Context)

/**
 *  从图片上下文获取新的图片(提高图片清晰度)
 */
- (UIImage *)imageFromContextWithSize:(CGSize)size;

@end
