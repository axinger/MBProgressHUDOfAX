//
//  UIView+OfAX.m
//  MBProgressHUDOfAX
//
//  Created by 小星星吃KFC on 2021/9/3.
//

#import "UIView+OfAX.h"
#import "MBProgressHUD+OfAX.h"

@implementation UIView (OfAX)

/**
 显示含有 ✅ 成功图片 显示在window中,会自动消失
 
 @param success 字符串
 */
- (void)ax_showSuccess:(NSString *)success {
    [MBProgressHUD ax_showSuccess:success];
}


/**
 显示含有 ❌ 成功图片 显示在window中,会自动消失
 
 @param error 文字
 */
- (void)ax_showError:(NSString *)error {
    [MBProgressHUD ax_showError:error];
}

/**
 显示含有 ❗️ 成功图片 显示在window中,会自动消失
 
 @param warning 文字
 */
- (void)ax_showWarning:(NSString *)warning {
    [MBProgressHUD ax_showWarning:warning];
}

@end
