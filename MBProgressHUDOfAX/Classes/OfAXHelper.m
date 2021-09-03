//
//  MBProgressHUDAXHelper.m
//  MBProgressHUD_AX
//
//  Created by 小星星吃KFC on 2021/9/2.
//

#import "OfAXHelper.h"

@implementation OfAXHelper


NSString *const MBProgressHUD_AX_BundleName = @"MBProgressHUDOfAX";

+ (NSBundle *)mainBundle {
    static NSBundle *resourceBundle = nil;
    if (!resourceBundle) {
        NSBundle *mainBundle = [NSBundle bundleForClass:self];
        NSString *resourcePath = [mainBundle pathForResource:MBProgressHUD_AX_BundleName ofType:@"bundle"];
        resourceBundle = [NSBundle bundleWithPath:resourcePath] ?: mainBundle;
    }
    return resourceBundle;
}



+ (UIImage *)imageNamed:(NSString *)name {
    UIImage *image = [UIImage imageNamed:name inBundle:self.mainBundle compatibleWithTraitCollection:nil];
    return image;
}

/**
 * 当前控制器
 */
+(UIViewController *)currentViewController {
    UIViewController *resultVC = [self ax_topViewController:[[UIApplication sharedApplication].keyWindow rootViewController]];
    while (resultVC.presentedViewController) {
        resultVC = [self ax_topViewController:resultVC.presentedViewController];
    }
    return resultVC;
}

//多次循环遍历
+ (UIViewController *)ax_topViewController:(UIViewController *)vc {
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return [self ax_topViewController:[(UINavigationController *)vc topViewController]];
    } else if ([vc isKindOfClass:[UITabBarController class]]) {
        return [self ax_topViewController:[(UITabBarController *)vc selectedViewController]];
    } else {
        return vc;
    }
    return nil;
}

@end
