//
//  Kpiece.m
//  国际象棋demo
//
//  Created by Sj03 on 2018/6/12.
//  Copyright © 2018年 Sj03. All rights reserved.
//

#import "Kpiece.h"

@implementation Kpiece

- (instancetype)initWithFrame:(CGRect)frame andstate:(NSInteger )pieceState andinitPoint:(NSInteger)point{
    self = [super initWithFrame:frame];
    if (self) {
        self.directionArray = [[NSMutableArray alloc] init];
        self.eatDirectionArray = [[NSMutableArray alloc] init];
        [self setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld.png",pieceState]] forState:UIControlStateNormal];
        if (pieceState>10) {
            self.titles = pieceState_BK;
            self.name = @"黑王";
        } else {
            self.titles = pieceState_WK;
            self.name = @"白王";
        }
        
        [self.directionArray addObject:@"2"];
        [self.directionArray addObject:@"4"];
        [self.directionArray addObject:@"6"];
        [self.directionArray addObject:@"8"];
        
        [self.directionArray addObject:@"1"];
        [self.directionArray addObject:@"3"];
        [self.directionArray addObject:@"5"];
        [self.directionArray addObject:@"7"];
        
        [self.eatDirectionArray addObject:@"1"];
        [self.eatDirectionArray addObject:@"3"];
        [self.eatDirectionArray addObject:@"5"];
        [self.eatDirectionArray addObject:@"7"];
        
        [self.eatDirectionArray addObject:@"2"];
        [self.eatDirectionArray addObject:@"4"];
        [self.eatDirectionArray addObject:@"6"];
        [self.eatDirectionArray addObject:@"8"];
        
        self.num = 1;
        
    }
    
    return self;
}

- (void)canMove:(placeModel *)nowplace {
    self.num = 1;
}

- (void)canEat:(placeModel *)nowplace {
    self.eatnum = 1;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
