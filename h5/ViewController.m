//
//  ViewController.m
//  h5
//
//  Created by space on 15/4/2.
//  Copyright (c) 2015年 ZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _webview.frame = self.view.frame;
    NSString *path = [[NSBundle mainBundle] pathForResource:@"www/index" ofType:@"html"];
//    NSURL *url = [NSURL URLWithString:@"http://720.hk/720file/wanda/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]];
    [_webview loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
