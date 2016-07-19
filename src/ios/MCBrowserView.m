//
//  MCBrowserView.m
//  每刻报销Dev
//
//  Created by LinyunDong on 7/18/16.
//
//

#import "MCBrowserView.h"
@import WebKit;

@interface MCBrowserView()

@property(nonatomic, strong) UIWebView *webView;
@property(nonatomic, strong) WKWebView *wkWebView;

@end

@implementation MCBrowserView

- (instancetype)initWithUrl:(NSString *)url {
    self = [super init];
    if (self) {
        if (NSClassFromString(@"WKWebView")) {
            self.wkWebView = [[WKWebView alloc] init];
            [self addSubview:self.wkWebView];
            [self.wkWebView loadRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:url]]];
        } else {
            self.webView = [[UIWebView alloc] init];
            [self addSubview:self.webView];
            [self.webView loadRequest:[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:url]]];
        }
        
    }
    return self;
}

- (void)layoutSubviews {
    CGFloat width = self.bounds.size.width;
    CGFloat height = self.bounds.size.height;
    
    if (self.webView) {
        self.webView.frame = CGRectMake(0, 0, width, height);
    } else if (self.wkWebView) {
        self.wkWebView.frame = CGRectMake(0, 0, width, height);
    }
}

@end
