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

NSString *ACCESS_KEY = @"hounds.fewcents.co";
NSString *CATEGORY = @"test_article";
NSString *LOGO_URL = @"https://totlol.com/wp-content/uploads/2019/05/prothomalo.jpg";
NSString *PUBLISHER_CUSTOMER_ID = @"abhishek_sharma";
NSString *PUBLISHER_DOMAIN = @"hounds.fewcents.co";

- (void)viewDidLoad {
    [super viewDidLoad];
    Fewcents *fewcents = [[Fewcents alloc] initWithAccessKey: ACCESS_KEY
                                                    category: CATEGORY
                                                     logoUrl: LOGO_URL
                                                  articleUrl: LOGO_URL
                                         publisherCustomerId: PUBLISHER_CUSTOMER_ID
                                             publisherDomain: PUBLISHER_DOMAIN];
    [fewcents loadPaywallIn:self];
//    [fewcents loadPaywallIn:self content:[UIView self] position: PositionCenter];
}


@end
