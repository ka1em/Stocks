//
//  main.m
//  Stocks
//
//  Created by ka1em on 16-7-18.
//  Copyright (c) 2016年 Ka1emApp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"
#import "BNRForeignStockHolding.h"
#import "BNRPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        BNRStockHolding *vip1 = [[BNRStockHolding alloc] init];
        BNRStockHolding *vip2 = [[BNRStockHolding alloc] init];
        BNRStockHolding *vip3 = [[BNRStockHolding alloc] init];
        
        [vip1 setPurchaseSharePrice:1.0];
        [vip1 setCurrentSharePrice:1.0];
        [vip1 setNumberOfShares:1.0];
        
        [vip2 setPurchaseSharePrice:2.0];
        [vip2 setCurrentSharePrice:2.0];
        [vip2 setNumberOfShares:2.0];
        
        [vip3 setPurchaseSharePrice:3.0];
        [vip3 setCurrentSharePrice:3.0];
        [vip3 setNumberOfShares:3.0];
        
        NSMutableArray * vipList = [[NSMutableArray alloc] init];
        [vipList addObject:vip1];
        [vipList addObject:vip2];
        [vipList addObject:vip3];
        
        for (BNRStockHolding *tmp in vipList) {
            NSLog(@"%.1f", [tmp currentSharePrice]);
            NSLog(@"%.1f", [tmp purchaseSharePrice]);
            NSLog(@"%d", [tmp numberOfShares]);
        }
        
        BNRForeignStockHolding *vip4 = [[BNRForeignStockHolding alloc] init];
        vip4.purchaseSharePrice = 4.0;
        vip4.currentSharePrice = 4.0;
        vip4.numberOfShares = 4;
        vip4.conversionRate = 100.0;
        
        [vipList addObject:vip4];
        
        for (id tmp in vipList) {
            NSLog(@"%@", tmp);
        }
        
        //
        BNRPortfolio *manger = [[BNRPortfolio alloc]init];
        
        [manger addHoldings:vipList];
        float money = [manger totalValue];
        
        NSLog(@"Money = %.2f", money);
        
    }
    return 0;
}

