//
//  ViewController.m
//  JSDemo
//
//  Created by 呵呵嗒 on 15/11/9.
//  Copyright © 2015年 呵呵嗒. All rights reserved.
//



#import "ViewController.h"
#import "JSInterface.h"
#import "EasyJSWebView.h"
#import <JavaScriptCore/JavaScriptCore.h>  

#define testUserInterFace
@interface ViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet EasyJSWebView *mWebV;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"JS调用OC";
    
    JSInterface* interface = [JSInterface new];
    [self.mWebV addJavascriptInterfaces:interface WithName:@"test"];
    self.mWebV.delegate = self;
    
}

#pragma mark - UIWebViewDelegate
- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}
- (void)webViewDidStartLoad:(UIWebView *)webView
{
    NSLog(@"---------------START------------------");
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    NSLog(@"---------------END------------------");
}

#pragma 事件
//访问JS
- (IBAction)onOpenJS:(UIButton *)sender
{
    NSString *htmlPath=[[NSBundle mainBundle] resourcePath];
    htmlPath=[htmlPath stringByAppendingPathComponent:@"html/test.html"];
    NSURL *localURL=[[NSURL alloc]initFileURLWithPath:htmlPath];
    [self.mWebV loadRequest:[NSURLRequest requestWithURL:localURL]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
