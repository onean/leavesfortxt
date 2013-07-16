//
//  SomeDangTextView.m
//  SignPandect
//
//  Created by apple  on 13-6-19.
//  Copyright (c) 2013年 Jimmy. All rights reserved.
//

#import "SomeDangTextView.h"

@interface UITextView ()

- (id)styleString;

@end

@implementation SomeDangTextView

- (id)styleString {
    return [[super styleString] stringByAppendingString:@"; line-height: 1.8em"];
}

@end
