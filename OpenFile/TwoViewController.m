//
//  TwoViewController.m
//  OpenFile
//
//  Created by 赵国栋 on 15/12/4.
//  Copyright © 2015年 王雪飞. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *str=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    
//    NSLog(@"%@",NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES));
//    NSURL *url = []
    NSLog(@"%@",[str stringByAppendingString:@"/abcd.doc"]);
    NSURL *url = [NSURL fileURLWithPath:[str stringByAppendingString:@"/abcd.doc"]];
    
    NSURLRequest *re = [NSURLRequest requestWithURL:url];
    
    UIWebView *webView = [[UIWebView alloc]initWithFrame:CGRectMake(0, 0, 320, 300)];
    webView.backgroundColor = [UIColor redColor];
    webView.scalesPageToFit = YES;
    [webView loadRequest:re];
    [self.view addSubview:webView];
    
//    UIWebView *webView = [UIWebView ;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
