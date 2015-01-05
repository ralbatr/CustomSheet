//
//  SheetView.h
//  XzlEE
//
//  Created by Ralbatr Yi on 14-12-17.
//  Copyright (c) 2014年 xzhiliao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol sheetDelegate

- (void)doneAction;
- (void)cancelAction;

@end

@interface SheetView : UIView
{
    
}
@property(assign) id sheetDelegateDelegate;
@property (nonatomic,strong) UIView *dateView;
-(id)initWithHeight:(float)height WithWidth:(float)width;
@end


//UIAlertController *_alert;
//UIActionSheet *actionSheet;
//- (void)buttonClick
//{
//    UIDatePicker *datePaick = [[UIDatePicker alloc] init];
//    
//    SheetView *sheet = [[SheetView alloc] initWithHeight:250 WithWidth:320];
//    sheet.sheetDelegateDelegate = self;
//    [sheet.dateView addSubview:datePaick];
//    
//    double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。
//    
//    if(version <= 8.0f)
//    {
//        actionSheet = [[UIActionSheet alloc] init];
//        actionSheet.title = @"\n\n\n\n\n\n\n\n\n\n\n\n";
//        [actionSheet addSubview:sheet];
//        [actionSheet showInView:[UIApplication sharedApplication].keyWindow];
//    }else
//    {
//        UIAlertController *alert = [[UIAlertController alloc] init];
//        alert.message = @"\n\n\n\n\n\n\n\n\n\n\n\n";
//        
//        [alert.view addSubview:sheet];
//        _alert = alert;
//        [self presentViewController:alert animated:NO completion:nil];
//    }
//    
//}
//
//- (void)doneAction
//{
//    NSLog(@"doneAction");
//    
//    
//    [self cancelAction];
//}
//
//- (void)cancelAction
//{
//    double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。
//    
//    if(version <= 8.0f)
//    {
//        [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
//    }else
//    {
//        [_alert dismissViewControllerAnimated:YES completion:nil];
//    }
//    NSLog(@"cancelAction");
//}

