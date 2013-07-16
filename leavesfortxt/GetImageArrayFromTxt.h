//
//  GetImageArrayFromTxt.h
//  MyBook
//
//  Created by FaceUI on 13-7-16.
//  Copyright (c) 2013年 faceUI_anyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YAScreenShotClass.h"
#import "SomeDangTextView.h"
@interface GetImageArrayFromTxt : NSObject
+(NSMutableArray *)getImageCount:(NSInteger)count fromIndex:(NSInteger)start andImageSize:(CGSize)size txtFile:(NSString *)file andFont:(UIFont *)font;
@end
