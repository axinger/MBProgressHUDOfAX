//
//  MBProgressHUD+OfAX.h
//  MBProgressHUDOfAX
//
//  Created by axinger on 09/03/2021.
//  Copyright (c) 2021 axinger. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (OfAX)

/**
 显示菊花控件和文字 显示在window中,不会自动消失

 @param message 字符串
 @return MBProgressHUD
 */
+ (MBProgressHUD *)ax_showTitle:(NSString *)message;

/**
 显示菊花控件和文字 显示在toView中,不会自动消失

 @param message 字符串
 @param view view
 @return MBProgressHUD
 */
+ (MBProgressHUD *)ax_showTitle:(NSString *)message toView:(UIView *)view;

/**
 显示进度 控制 progress 显示在window中,不会自动消失
 hud.progress = 0.5;
 @param message 字符串
 @return MBProgressHUD
 */
+ (MBProgressHUD *)ax_showProgressTitle:(NSString *)message;

/**
 显示进度 控制 progress 显示在toView中,不会自动消失
 hud.progress = 0.5;
 @param message 字符串
 @param view toView
 @return MBProgressHUD
 */
+ (MBProgressHUD *)ax_showProgressTitle:(NSString *)message toView:(UIView *)view;

/**
 显示含有 ✅ 成功图片 显示在window中,会自动消失

 @param success 字符串
 */
+ (void)ax_showSuccess:(NSString *)success;

/**
 显示含有 ✅ 成功图片 显示在toView中,会自动消失

 @param success 文字
 @param view view
 */
+ (void)ax_showSuccess:(NSString *)success toView:(UIView *)view;

/**
 显示含有 ❌ 成功图片 显示在window中,会自动消失

 @param error 文字
 */
+ (void)ax_showError:(NSString *)error;

/**
 显示含有 ❌ 成功图片 显示在toView中,会自动消失

 @param error 文字
 @param view toView
 */
+ (void)ax_showError:(NSString *)error toView:(UIView *)view;

/**
 显示含有 ❗️ 成功图片 显示在window中,会自动消失

 @param warning 文字
 */
+ (void)ax_showWarning:(NSString *)warning;

/**
 显示含有 ❗️ 成功图片 显示在toView中,会自动消失

 @param warning 文字
 @param view toView
 */
+ (void)ax_showWarning:(NSString *)warning toView:(UIView *)view;

+ (MBProgressHUD *)ax_showTitle:(NSString *)message
                             mode:(MBProgressHUDMode )mode
                           toView:(UIView *)view;

+ (MBProgressHUD *)ax_showTitle:(NSString *)message
                             mode:(MBProgressHUDMode )mode;


/// 显示菊花 和 文字
/// @param message 文字
/// @param view view
+ (MBProgressHUD *)ax_showIndicator:(NSString *)message
                             toView:(UIView *)view;
/**
  隐藏  window中的
 */
+ (void)ax_hideHUD;

/**
 隐藏 view中的

 @param view view
 */
+ (void)ax_hideHUDForView:(UIView *)view;

/**
 显示成功,含有回调

 @param success 文字
 @param completed completed
 */
+ (void)ax_showSuccess:(NSString *)success completed:(void (^)(void))completed;

/**
 显示文字,不需要图片

 @param title title
 */
+ (void)ax_showOnlyTitle:(NSString *)title;

/**
 显示自定义view 作为指示器

 @param text 文字
 @param customView 自定义view
 */
+ (void)ax_show:(NSString *)text customView:(UIView *)customView;

/**
  显示自定义view 作为指示器

 @param text 文字
 @param customView 自定义view
 @param view 显示在veiw
 */
+ (void)ax_show:(NSString *)text customView:(UIView *)customView view:(UIView *)view;

@end
