//
//  BNRStockHolding.h
//  Stocks
//
//  Created by ka1em on 16-7-18.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)p;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)c;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)n;

- (float)costInDollars;
- (float)valueInDollars;
@end
