//
//  ViewController.m
//  FewcentsObjCSample
//
//  Created by Chowdhury Md Rajib  Sarwar on 2/8/21.
//

#import "ViewController.h"
#import <Fewcents_iOS_SDK/Fewcents_iOS_SDK-Swift.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Fewcents *fewcents = [[Fewcents alloc] initWithAccessKey: @"hounds.fewcents.co" category: @"test_article" logoUrl: @"https://totlol.com/wp-content/uploads/2019/05/prothomalo.jpg" articleUrl: @"https://totlol.com/wp-content/uploads/2019/05/prothomalo.jpg" publisherCustomerId: @"abhishek_sharma" publisherDomain: @"hounds.fewcents.co"];
    [fewcents loadPaywallIn:self];
}


@end
