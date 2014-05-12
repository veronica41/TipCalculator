//
//  SettingsViewController.h
//  tipcalculator
//
//  Created by Veronica Zheng on 5/11/14.
//  Copyright (c) 2014 Veronica Zheng. All rights reserved.
//

#import <UIKit/UIKit.h>

extern NSString * const TipPercentageIndexKey;

@interface SettingsViewController : UIViewController

+ (int)defaultTipPercentageIndex;
+ (void)setDefaultTipPercentageIndex:(int)index;

@end
