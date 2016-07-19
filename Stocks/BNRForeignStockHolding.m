//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by ka1em on 16-7-19.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import "BNRForeignStockHolding.h"

@implementation BNRForeignStockHolding

-(float)costInDollars
{
    return [super costInDollars] * self.conversionRate;
}

-(float)valueInDollars
{
    return [super valueInDollars] * self.conversionRate;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"num of shares %d Rate %.2f",
            self.numberOfShares, self.conversionRate];
}


@end
