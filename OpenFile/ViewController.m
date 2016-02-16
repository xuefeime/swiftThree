//
//  ViewController.m
//  OpenFile
//
//  Created by 赵国栋 on 15/12/4.
//  Copyright © 2015年 王雪飞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置需要显示哪些类型的会话
    [self setDisplayConversationTypes:@[@(ConversationType_PRIVATE),
                                        @(ConversationType_DISCUSSION),
                                        @(ConversationType_CHATROOM),
                                        @(ConversationType_GROUP),
                                        @(ConversationType_APPSERVICE),
                                        @(ConversationType_SYSTEM)]];
    //设置需要将哪些类型的会话在会话列表中聚合显示
    [self setCollectionConversationType:@[@(ConversationType_DISCUSSION),
                                          @(ConversationType_GROUP)]];
//    NSLog(@"%@",NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES));
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)buttonClick:(id)sender {
    RCConversationViewController *chat = [[RCConversationViewController alloc]init];
    //设置会话的类型，客服2.0的会话类型为ConversationType_APPSERVICE
    chat.conversationType = ConversationType_APPSERVICE;
    //设置会话的目标会话ID，客服2.0的目标会话ID为您在开发者控制台拿到的客服ID
    chat.targetId = @"KEFU145455218144824";
    //设置聊天会话界面要显示的标题
    chat.title = @"客服";
    //显示聊天会话界面
    [self.navigationController pushViewController:chat animated:YES];
}
- (IBAction)serviceClick:(id)sender {
//    RCConversationViewController *chat = [[RCConversationViewController alloc]init];
//    //设置会话的类型，客服2.0的会话类型为ConversationType_APPSERVICE
//    chat.conversationType = ConversationType_APPSERVICE;
//    //设置会话的目标会话ID，客服2.0的目标会话ID为您在开发者控制台拿到的客服ID
//    chat.targetId = @"KEFU145455218144824";
//    //设置聊天会话界面要显示的标题
//    chat.title = @"客服";
//    //显示聊天会话界面
//    [self.navigationController pushViewController:chat animated:YES];
    RCPublicServiceChatViewController *conversationVC = [[RCPublicServiceChatViewController alloc] init];
    conversationVC.conversationType = ConversationType_APPSERVICE;
    conversationVC.targetId = @"KEFU145455218144824";
//    conversationVC.userName = @"ww";
    conversationVC.title = @"客服";
    [self.navigationController pushViewController:conversationVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
