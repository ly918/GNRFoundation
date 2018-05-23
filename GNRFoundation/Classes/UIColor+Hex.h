//
//  UIColor+Hex.h
//  TKBaseModule
//
//  Created by GNR on 2018/3/2.
//  Copyright © 2018年 TicTalk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

//0 - 1
+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue a:(CGFloat)alpha;

+ (UIColor *)randColor;//随机

+ (UIColor *)mainTintColor;//主题风格颜色

+ (UIColor *)yellowColor_FECF26;

+ (UIColor *)navigationBarTitleColor_51;

+ (UIColor *)cancelItemTintColor_51;// cancel item颜色

+ (UIColor *)backgroundColor_246;//背景灰

+ (UIColor *)backgroundColor_F3F3F7;

+ (UIColor *)largeTitleColor_474753;

+ (UIColor *)textColor_243;

+ (UIColor *)textColor_161;//文字灰

+ (UIColor *)textColor_Field_161;//输入框文字颜色

+ (UIColor *)onTintColor_Switch;//开关

+ (UIColor *)separatorColor_231;//分割线颜色

// 透明度固定为1，以0x开头的十六进制转换成的颜色
+ (UIColor *)colorWithHex:(long)hexColor;

// 0x开头的十六进制转换成的颜色,透明度可调整
+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity;

// 颜色转换三：iOS中十六进制的颜色（以#开头）转换为UIColor
+ (UIColor *)colorWithHexString: (NSString *)color;

+ (UIColor *)colorWithHexString: (NSString *)color alpha:(float)alpha;

@end
