//
//  YAScreenShotClass.h
//  MyBook
//
//  Created by FaceUI on 13-7-16.
//  Copyright (c) 2013年 faceUI_anyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
@interface YAScreenShotClass : NSObject
+(UIImage *)screenShotFrom:(UIView *)view frame:(CGRect)frame;
@end
