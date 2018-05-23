//
//  UIColor+Hex.m
//  TKBaseModule
//
//  Created by GNR on 2018/3/2.
//  Copyright © 2018年 TicTalk. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)
+ (UIColor *)randColor{
    return [UIColor colorWithRed:arc4random_uniform(255)/255.f green:arc4random_uniform(255)/255.f blue:arc4random_uniform(255)/255.f alpha:1];
}

+ (UIColor *)colorWithR:(CGFloat)red g:(CGFloat)green b:(CGFloat)blue a:(CGFloat)alpha{
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

+ (UIColor *)mainTintColor{
    return [UIColor colorWithR:98 g:134 b:254 a:1];
}

+ (UIColor *)yellowColor_FECF26{
    return [UIColor colorWithHexString:@"#FECF26"];
}

+ (UIColor *)largeTitleColor_474753{
    return [UIColor colorWithHexString:@"#474753"];
}

+ (UIColor *)navigationBarTitleColor_51{
    return [UIColor cancelItemTintColor_51];
}

+ (UIColor *)cancelItemTintColor_51{
    return [UIColor colorWithR:51 g:51 b:51 a:1];
}

+ (UIColor *)backgroundColor_246{
    return [UIColor colorWithR:246 g:246 b:246 a:1];
}

+ (UIColor *)backgroundColor_F3F3F7{
    return [UIColor colorWithHexString:@"#F3F3F7"];
}

+ (UIColor *)textColor_161{
    return [UIColor colorWithR:161 g:161 b:161 a:1];
}

+ (UIColor *)textColor_243{
    return [UIColor colorWithR:243 g:243 b:243 a:1];
}

+ (UIColor *)textColor_Field_161{
    return [UIColor colorWithR:161 g:161 b:161 a:1];
}

+ (UIColor *)onTintColor_Switch{
    return [UIColor colorWithR:113 g:144 b:249 a:1];
}

+ (UIColor *)separatorColor_231{
    return [UIColor colorWithR:231 g:231 b:231 a:1];
}

+ (UIColor*) colorWithHex:(long)hexColor{
    return [UIColor colorWithHex:hexColor alpha:1.];
}

+ (UIColor *)colorWithHex:(long)hexColor alpha:(float)opacity{
    float red = ((float)((hexColor & 0xFF0000) >> 16))/255.0;
    float green = ((float)((hexColor & 0xFF00) >> 8))/255.0;
    float blue = ((float)(hexColor & 0xFF))/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:opacity];
}

+ (UIColor *) colorWithHexString: (NSString *)color
{
    return [UIColor colorWithHexString:color alpha:1];
}

+ (UIColor *)colorWithHexString: (NSString *)color alpha:(float)alpha{
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    
    // 判断前缀并剪切掉
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:alpha];
}

@end
