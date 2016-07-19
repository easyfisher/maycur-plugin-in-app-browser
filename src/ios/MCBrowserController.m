//
//  MCBrowserController.m
//  每刻报销Dev
//
//  Created by LinyunDong on 7/18/16.
//
//

#import "MCBrowserController.h"
#import "MCBrowserView.h"

@interface MCBrowserController ()

@property (nonatomic, strong) NSString *url;

@end

@implementation MCBrowserController

- (instancetype)initWithUrl:(NSString *)url {
    self = [self init];
    if (self) {
        self.url = url;
    }
    return self;
}

- (void)loadView {
    self.view = [[MCBrowserView alloc] initWithUrl:self.url];
}

@end
