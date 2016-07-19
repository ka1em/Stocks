//
//  BNRStockHolding.m
//  Stocks
//
//  Created by ka1em on 16-7-18.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)c
{
    _currentSharePrice = c;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)n
{
    _numberOfShares = n;
}
- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"num of shares %d", self.numberOfShares];
}
@end
