    //
//  ExampleViewController.m
//  Leaves
//
//  Created by Tom Brow on 4/18/10.
//  Copyright 2010 Tom Brow. All rights reserved.
//

#import "ImageExampleViewController.h"
#import "Utilities.h"

@implementation ImageExampleViewController

- (id)init {
    if (self = [super init]) {
//		images = [[NSArray alloc] initWithObjects:
//				  [UIImage imageNamed:@"kitten.jpg"],
//				  [UIImage imageNamed:@"kitten2.jpg"],
//				  [UIImage imageNamed:@"kitten3.jpg"],
//				  nil];
//        images = [GetImageArrayFromTxt getImageCount:10 fromIndex:0 andImageSize:self.view.frame.size txtFile:[[NSBundle mainBundle] pathForResource:@"text" ofType:@"txt"] andFont:[UIFont systemFontOfSize:18]];
        
        
        [leavesView reloadData];
//        NSLog(@"%@",images);
    }
    return self;
}

- (void)dealloc {
	[images release];
    [super dealloc];
}

#pragma mark LeavesViewDataSource methods

- (NSUInteger) numberOfPagesInLeavesView:(LeavesView*)leavesView {
    NSLog(@"%d",images.count);
	return 100000;
}

- (void) renderPageAtIndex:(NSUInteger)index inContext:(CGContextRef)ctx {
    NSLog(@"!!%d",index);
	UIImage *image = [[GetImageArrayFromTxt getImageCount:1 fromIndex:index andImageSize:self.view.frame.size txtFile:[[NSBundle mainBundle] pathForResource:@"text2" ofType:@"txt"] andFont:[UIFont systemFontOfSize:18]] objectAtIndex:0];
	CGRect imageRect = CGRectMake(0, 0, image.size.width, image.size.height);
	CGAffineTransform transform = aspectFit(imageRect,
											CGContextGetClipBoundingBox(ctx));
	CGContextConcatCTM(ctx, transform);
	CGContextDrawImage(ctx, imageRect, [image CGImage]);
}

-(void)leavesView:(LeavesView *)leavesView willTurnToPageAtIndex:(NSUInteger)pageIndex
{
    NSLog(@"%d",pageIndex);
}
-(void)leavesView:(LeavesView *)leavesView didTurnToPageAtIndex:(NSUInteger)pageIndex
{
    NSLog(@"~%d",pageIndex);
}


@end
