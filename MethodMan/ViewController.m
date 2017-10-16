//
//  ViewController.m
//  MethodMan
//
//  Created by Hongbo Niu on 2017-10-15.
//  Copyright © 2017 Udemy. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
@property (nonatomic, strong) NSNumber *bankAccount;
@property (nonatomic) double itemAmount;
@end

@implementation ViewController

// Here is function implementation
- (void)viewDidLoad {
    [super viewDidLoad];

    self.bankAccount = [NSNumber numberWithDouble:500.50];
    self.itemAmount = 400.00;
    
    [self playground];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL) canPurchase: (double) amount {
    if ([self.bankAccount doubleValue] > amount)
        return YES;
    return NO;
}

- (void) playground{
    if ([self canPurchase:self.itemAmount]){
        NSLog(@"We can buy!");
    }
    
    [self declareWinnerWithPlayerAScore:15 PlayerBScore:17];
    
    Person *person = [[Person alloc]init];
    [person speakName];
    [Person stateSpecies];
    
    //Embeded function call in Objective C
    UIImage *image1 = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"www.google.com/image/**"]]];
    
    //Alternative, do not use the follow
    NSString *urlString = @"www.google.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image2 = [UIImage imageWithData:data];
    
    
}

- (void) declareWinner: (NSNumber*) playerAScore : (NSNumber*) playerBScore{
    if ([playerAScore intValue] > playerBScore.intValue){
        NSLog(@"Player A Wins!");
    }else if([playerBScore intValue] > playerAScore.intValue){
        NSLog(@"Player B Wins!");
    }else{
        NSLog(@"The gme is at a standstill!!!!!");
    }
}

// Named parameters
- (void) declareWinnerWithPlayerAScore:(NSInteger)scoreA PlayerBScore:(NSInteger)scoreB{
    if (scoreA > scoreB){
        NSLog(@"Player A Wins!");
    }else if(scoreA < scoreB){
        NSLog(@"Player B Wins!");
    }else{
        NSLog(@"The gme is at a standstill!!!!!");
    }
}
@end
