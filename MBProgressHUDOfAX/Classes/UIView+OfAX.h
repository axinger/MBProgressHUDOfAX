//
//  UIView+OfAX.h
//  MBProgressHUDOfAX
//
//  Created by 小星星吃KFC on 2021/9/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (OfAX)

/**
 显示含有 ✅ 成功图片 显示在window中,会自动消失

 @param success 字符串
 */
- (void)ax_showSuccess:(NSString *)success;

/**
 显示含有 ❌ 成功图片 显示在window中,会自动消失

 @param error 文字
 */
- (void)ax_showError:(NSString *)error;

/**
 显示含有 ❗️ 成功图片 显示在window中,会自动消失

 @param warning 文字
 */
- (void)ax_showWarning:(NSString *)warning;

@end

NS_ASSUME_NONNULL_END
