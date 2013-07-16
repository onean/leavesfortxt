//
//  GetImageArrayFromTxt.m
//  MyBook
//
//  Created by FaceUI on 13-7-16.
//  Copyright (c) 2013年 faceUI_anyi. All rights reserved.
//

#import "GetImageArrayFromTxt.h"

@implementation GetImageArrayFromTxt
+(NSMutableArray *)getImageCount:(NSInteger)count fromIndex:(NSInteger)start andImageSize:(CGSize)size txtFile:(NSString *)file andFont:(UIFont *)font
{
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    
    SomeDangTextView * textView = [[SomeDangTextView alloc]initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    textView.font = font;
    
    [view addSubview:textView];
    textView.text = [NSString stringWithContentsOfFile:file encoding:NSUTF8StringEncoding error:nil];
    NSMutableArray * imageArray = [[NSMutableArray alloc]init];
    for (int i = 0; i < count ; i ++) {
        [textView setContentOffset:CGPointMake( 0 , size.height * ( i + start ))];
        ;
        [imageArray addObject:[YAScreenShotClass screenShotFrom:textView.superview frame:CGRectMake(0, 0, size.width, size.height)]];
    }
    return imageArray;
}
@end
