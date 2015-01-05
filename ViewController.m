//
//  ViewController.m
//  CustomSheet
//
//  Created by Ralbatr Yi on 14-11-21.
//  Copyright (c) 2014年 Ralbatr Yi. All rights reserved.
//

#import "ViewController.h"
#import "SheetView.h"

@interface ViewController ()
{
    UIAlertController *_alert;
    UIActionSheet *actionSheet;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (IBAction)butttonAction:(UIButton *)sender {
    [self buttonClick];
}

- (void)buttonClick
{
    UIDatePicker *datePaick = [[UIDatePicker alloc] init];

    SheetView *sheet = [[SheetView alloc] initWithHeight:250 WithWidth:320];
    sheet.sheetDelegateDelegate = self;
    [sheet.dateView addSubview:datePaick];

    double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。

    if(version <= 8.0f)
    {
        actionSheet = [[UIActionSheet alloc] init];
        actionSheet.title = @"\n\n\n\n\n\n\n\n\n\n\n\n";
        [actionSheet addSubview:sheet];
        [actionSheet showInView:[UIApplication sharedApplication].keyWindow];
    }else
    {
        UIAlertController *alert = [[UIAlertController alloc] init];
        alert.message = @"\n\n\n\n\n\n\n\n\n\n\n\n";

        [alert.view addSubview:sheet];
        _alert = alert;
        [self presentViewController:alert animated:NO completion:nil];
    }

}

- (void)doneAction
{
    NSLog(@"doneAction");


    [self cancelAction];
}

- (void)cancelAction
{
    double version = [[UIDevice currentDevice].systemVersion doubleValue];//判定系统版本。

    if(version <= 8.0f)
    {
        [actionSheet dismissWithClickedButtonIndex:0 animated:YES];
    }else
    {
        [_alert dismissViewControllerAnimated:YES completion:nil];
    }
    NSLog(@"cancelAction");
}

@end
