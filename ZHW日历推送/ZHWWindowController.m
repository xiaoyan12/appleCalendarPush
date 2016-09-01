//
//  ZHWWindowController.m
//  ZHW日历推送
//
//  Created by 闫世超 on 16/8/31.
//  Copyright © 2016年 闫世超. All rights reserved.
//

#import "ZHWWindowController.h"
#import <AFNetworking/AFNetworking.h>
#import <EventKit/EventKit.h>

@interface ZHWWindowController ()

@property (nonatomic ,strong)NSTimer *timer;

@property (nonatomic ,strong)NSPasteboard *pasteBoard;


@end

@implementation ZHWWindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    NSString *emailStr = @"244399322@qq.com,2530078988@qq.com,125327687@qq.com,64981750@qq.com";
    
    self.pasteBoard = [NSPasteboard generalPasteboard];
    [self.pasteBoard clearContents];
    [self.pasteBoard writeObjects:[NSArray arrayWithObject:emailStr]];
    
    [self addCalendarEvents];
    
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

#pragma mark -- 设置定时器
-(void)setUpTheNSTimer{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:100 target:self selector:@selector(callTheScript:) userInfo:nil repeats:YES];
}

-(void)callTheScript:(NSTimer *)timer{
    
}

#pragma mark --设置网络请求
-(void)setUpTheNetworkRequest:(NSString *)urlStr{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        id obj = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingAllowFragments error:nil];
        if ([obj isKindOfClass:[NSDictionary class]]) {
            NSLog(@"-字典-");
        }
        
        if ([obj isKindOfClass:[NSArray class]]) {
            NSLog(@"-数组-");
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
}
#pragma mark --设置applescript脚本
//设置applescript脚本
-(void)setUpTheAppleScript{
    NSTask *task = nil;
    
    NSString *scriptPath = [[NSBundle mainBundle]pathForResource:@"apple" ofType:@"scpt"];
    if (scriptPath)
    {
        NSArray *a = [NSArray arrayWithObjects:scriptPath,  nil];
        task = [NSTask launchedTaskWithLaunchPath:@"/usr/bin/osascript" arguments:a];
        NSLog(@"task--%@",task);
    }
}

#pragma mark --添加日历事件
//添加日历事件
-(void)addCalendarEvents{
    
    EKEventStore *eventStore = [[EKEventStore alloc] init];
    
    //06.07 使用 requestAccessToEntityType:completion: 方法请求使用用户的日历数据库
    
    if ([eventStore respondsToSelector:@selector(requestAccessToEntityType:completion:)])
    {
        // the selector is available, so we must be on iOS 6 or newer
        [eventStore requestAccessToEntityType:EKEntityTypeEvent completion:^(BOOL granted, NSError *error) {
            dispatch_async(dispatch_get_main_queue(), ^{
                if (error)
                {
                    //错误细心
                    // display error message here
                }
                else if (!granted)
                {
                    //被用户拒绝，不允许访问日历
                    // display access denied error message here
                }
                else
                {
                    // access granted
                    // ***** do the important stuff here *****
                    
                    //事件保存到日历
                    //06.07 元素
                    //title(标题 NSString),
                    //location(位置NSString),
                    //startDate(开始时间 2016/06/07 11:14AM),
                    //endDate(结束时间 2016/06/07 11:14AM),
                    //addAlarm(提醒时间 2016/06/07 11:14AM),
                    //notes(备注类容NSString)
                    
                    //创建事件
                    EKEvent *event  = [EKEvent eventWithEventStore:eventStore];
                    event.title  = @"一起去玩, 嗨起来";
                   // event.location = @"河南郑州";
                    
                    //06.07 时间格式
                    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
                    [dateFormatter setAMSymbol:@"AM"];
                    [dateFormatter setPMSymbol:@"PM"];
                    [dateFormatter setDateFormat:@"yyyy/MM/dd hh:mmaaa"];
                    NSDate *date = [NSDate date];
                    NSString * s = [dateFormatter stringFromDate:date];
                    NSLog(@"%@",s);
                    
                    //开始时间(必须传)
                    event.startDate = [date dateByAddingTimeInterval:60 * 2];
                    //结束时间(必须传)
                    event.endDate   = [date dateByAddingTimeInterval:60 * 5 * 24];
                    // event.endDate   = [[NSDate alloc]init];
                    // event.allDay = YES;//全天
                    
                    //添加提醒
                    //第一次提醒  (几分钟后)
                    //  [event addAlarm:[EKAlarm alarmWithRelativeOffset:60.0f * -1.0f]];
                    //第二次提醒  ()
                    //[event addAlarm:[EKAlarm alarmWithRelativeOffset:60.0f * -10.0f * 24]];
                    
                    //06.07 add 事件类容备注
                    NSString * str = @"我也不知道要说什么";
                    event.notes = [NSString stringWithFormat:@"%@",str];
                    
                    [event setCalendar:[eventStore defaultCalendarForNewEvents]];
                    NSError *err;
                    
                    [eventStore saveEvent:event span:EKSpanThisEvent commit:YES error:&err];
                    if (!error) {
                        NSLog(@"保存成功");
                    }else{
                        NSLog(@"-error-%@",error);
                    }
                    
                    
                    [self setUpTheAppleScript];
                    
                    //直接杀死进程
                    //  exit(2);
                    
                }
            });
        }];
    }
    
}




@end
