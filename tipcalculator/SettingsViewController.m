//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Veronica Zheng on 5/11/14.
//  Copyright (c) 2014 Veronica Zheng. All rights reserved.
//

#import "SettingsViewController.h"

NSString * const TipPercentageIndexKey = @"TipPercentageIndex";

@interface SettingsViewController ()

@property (weak, nonatomic) IBOutlet UISegmentedControl *settingsTipControl;

@end

@implementation SettingsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated {
    NSInteger index = [SettingsViewController defaultTipPercentageIndex];
    [self.settingsTipControl setSelectedSegmentIndex:index];
}

- (void)viewWillDisappear:(BOOL)animated {
    NSInteger index = self.settingsTipControl.selectedSegmentIndex;
    [SettingsViewController setDefaultTipPercentageIndex:index];
}

+ (NSInteger)defaultTipPercentageIndex {
    return [[NSUserDefaults standardUserDefaults] integerForKey:TipPercentageIndexKey];
}

+ (void)setDefaultTipPercentageIndex:(NSInteger)index {
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:index forKey:TipPercentageIndexKey];
    [defaults synchronize];
}

@end
