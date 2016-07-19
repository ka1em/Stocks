//
//  BNRPortfolio.m
//  Stocks
//
//  Created by ka1em on 16-7-19.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import "BNRPortfolio.h"

@implementation BNRPortfolio

- (void)addHoldings:(NSMutableArray *)a
{
    if (!_holdings) {
        _holdings = [[NSMutableArray alloc]init];
    }
    [_holdings addObject:a];
}
- (float)totalValue
{
    float sum = 0.0;
    for (id d in _holdings) {
        sum += [d valueInDollars];
    }
    return sum;
}
@end
