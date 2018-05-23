//
//  UIView+Factory.m
//  TKBaseModule
//
//  Created by Luca on 2018/4/18.
//  Copyright © 2018年 TicTalk. All rights reserved.
//

#import "UIView+Factory.h"

@implementation UIView (Factory)
+ (MKMapView *)mapViewMK{
    MKMapView *mapView = [[MKMapView alloc]init];
    mapView.region = MKCoordinateRegionMake(CLLocationCoordinate2DMake(31.22269324,121.43785449), MKCoordinateSpanMake(.01, .01));
    return mapView;
}

+ (UIButton *)buttonWithTitle:(NSString *)title
                        image:(UIImage *)image
                       target:(id)target
                       action:(SEL)action{
    UIButton *btn = [UIView buttonWithButtonType:UIButtonTypeCustom
                                           title:title
                                           image:image
                                          target:target
                                          action:action];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    return btn;
}

+ (UIButton *)buttonWithButtonType:(UIButtonType)buttonType
                             title:(NSString *)title
                             image:(UIImage *)image
                            target:(id)target
                            action:(SEL)action{
    UIButton *btn = [UIButton buttonWithType:buttonType];
    if(title)[btn setTitle:title forState:UIControlStateNormal];
    if(image)[btn setImage:image forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:17];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

+ (UILabel *)labelWithTitle:(NSString *)title
                       font:(UIFont *)font
                  textColor:(UIColor *)textColor
              textAlignment:(NSTextAlignment)textAlignment{
    UILabel *label = [[UILabel alloc]init];
    label.font = font?:[UIFont systemFontOfSize:17];
    label.textColor = textColor?:[UIColor blackColor];
    label.text = title?:@"";
    label.textAlignment = textAlignment;
    return label;
}

+ (UIImageView *)imageViewWithImage:(UIImage *)image{
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.clipsToBounds = YES;
    return imageView;
}

- (void)showCornerRadius:(CGFloat)cornerRadius{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (void)addShadowOffset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius{
    UIBezierPath *shadowPath = [UIBezierPath bezierPathWithRect:self.bounds];
    self.layer.shadowPath = shadowPath.CGPath;
    self.clipsToBounds = NO;
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = [UIColor blackColor].CGColor;
    self.layer.shadowOffset = offset;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowRadius = radius;
}


@end