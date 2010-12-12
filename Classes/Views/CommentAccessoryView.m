//
//  CommentAccessoryView.m
//  Reddit2
//
//  Created by Ross Boucher on 6/11/09.
//  Copyright 2009 280 North. All rights reserved.
//

#import "CommentAccessoryView.h"


@implementation CommentAccessoryView

@synthesize story;

- (id)initWithFrame:(CGRect)frame 
{
    if (self = [super initWithFrame:frame])
	{
		self.backgroundColor = [UIColor whiteColor];
		self.opaque = YES;

		[self setBackgroundImage:[UIImage imageNamed:@"commentBubble.png"] forState:UIControlStateNormal];
		
		self.titleEdgeInsets = UIEdgeInsetsMake(0.0, 0.0, 7.0, 0.0);
		self.titleLabel.font = [UIFont boldSystemFontOfSize:10.0];
		self.titleLabel.textColor = [UIColor whiteColor];
		self.titleLabel.shadowColor = [UIColor grayColor];
		self.titleLabel.shadowOffset = CGSizeMake(0.0, -1.0);
    }
	
    return self;
}

- (void)setCommentCount:(unsigned)aCount
{
	[self setTitle:[NSString stringWithFormat:@"%u", aCount] forState:UIControlStateNormal];
}

- (void)dealloc {
	self.story = nil;
    [super dealloc];
}


@end
