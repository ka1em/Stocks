//
//  BNRForeignStockHolding.h
//  Stocks
//
//  Created by ka1em on 16-7-19.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import "BNRStockHolding.h"

@interface BNRForeignStockHolding : BNRStockHolding

@property (nonatomic) float conversionRate;
@property (nonatomic) NSString *symbol;


@end
