//
//  MCBrowserNavController.m
//  每刻报销Dev
//
//  Created by LinyunDong on 7/18/16.
//
//

#import "MCBrowserNavController.h"
#import "MCBrowserController.h"

@implementation MCBrowserNavController

- (instancetype)initWithUrl:(NSString *)url {
    MCBrowserController * controller = [[MCBrowserController alloc] initWithUrl:url];
    controller.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(backButtonClicked)];
    return [self initWithRootViewController:controller];
}

- (void)backButtonClicked {
    UIViewController *rootController = [UIApplication sharedApplication].delegate.window.rootViewController;
    [rootController dismissViewControllerAnimated:YES completion:nil];
}

@end
