//
//  BNRPortfolio.h
//  Stocks
//
//  Created by ka1em on 16-7-19.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRForeignStockHolding.h"

@interface BNRPortfolio : BNRForeignStockHolding

@property (nonatomic) NSMutableArray *holdings;
- (void)addHoldings:(NSMutableArray *)a;
- (float)totalValue;
@end
