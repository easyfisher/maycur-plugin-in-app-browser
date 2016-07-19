#import "MCBrowser.h"
#import <Cordova/CDVPlugin.h>
#import "MCBrowserNavController.h"

@interface MCBrowser()

@end

@implementation MCBrowser

- (void)show:(CDVInvokedUrlCommand*)command {
    NSString *url = command.arguments[0];
    UIViewController *controller = [[MCBrowserNavController alloc] initWithUrl:url];
    
    UIViewController *rootController = [UIApplication sharedApplication].delegate.window.rootViewController;
    [rootController presentViewController:controller animated:YES completion:nil];
}

@end
