//
//  UIImage+Context.m
//  BNProject
//
//  Created by vera on 16/9/22.
//  Copyright © 2016年 KFH. All rights reserved.
//

#import "UIImage+Context.h"

@implementation UIImage (Context)

/**
 *  从图片上下文获取新的图片
 */
- (UIImage *)imageFromContextWithSize:(CGSize)size
{
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    //设置图片质量
    CGContextSetInterpolationQuality(UIGraphicsGetCurrentContext(), kCGInterpolationNone);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
