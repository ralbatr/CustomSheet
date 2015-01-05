//
//  SheetView.m
//  XzlEE
//
//  Created by Ralbatr Yi on 14-12-17.
//  Copyright (c) 2014年 xzhiliao. All rights reserved.
//

#import "SheetView.h"

@implementation SheetView

-(id)initWithHeight:(float)height WithWidth:(float)width
{
    self = [super init];
    if (self)
    {
        self.frame = CGRectMake(0, 0, width, height);
        
        UIView *toolView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width-16, 44)];
        toolView.backgroundColor = [UIColor blackColor];
        [self addSubview:toolView];
        
        UIButton *cancelBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 44)];
        [cancelBtn setTitle:@"取消" forState:UIControlStateNormal];
//        cancelBtn.backgroundColor = [UIColor redColor];
        [cancelBtn addTarget:self action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:cancelBtn];
        
        UIButton *doneBtn = [[UIButton alloc] initWithFrame:CGRectMake(width-50-16, 0, 50, 44)];
        [doneBtn setTitle:@"确定" forState:UIControlStateNormal];
//        doneBtn.backgroundColor = [UIColor redColor];
        [doneBtn addTarget:self action:@selector(done) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:doneBtn];
        
        _dateView = [[UIView alloc] initWithFrame:CGRectMake(0, 44, width, 216)];
        [self addSubview:_dateView];
    }
    return self;
}

-(void)cancel
{
    NSLog(@"cancel");
    if ([self.sheetDelegateDelegate respondsToSelector:@selector(cancelAction)]) {
        [self.sheetDelegateDelegate cancelAction];
    }
}

-(void)done
{
    NSLog(@"done");
    if ([self.sheetDelegateDelegate respondsToSelector:@selector(doneAction)]) {
        [self.sheetDelegateDelegate doneAction];
    }
}

@end
