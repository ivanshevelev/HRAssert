//
//  HRViewController.m
//  HRAssert
//
//  Created by Ivan Shevelev on 03/24/2016.
//  Copyright (c) 2016 Ivan Shevelev. All rights reserved.
//

#import "HRViewController.h"
#import "HRAssert.h"

@interface HRViewController ()

@end

@implementation HRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *string = @"test";
    
    HRKindOfClassAssert(NSMutableString, string);
    HRConformsToProtocolAssert(NSCopying, string);
    
    
    Class stringClass = [NSString class];
    Class mutableStringClass = [NSMutableString class];
    
    HRKindOfClassAssert(mutableStringClass, stringClass);
    
    Protocol *copyingProtocol = @protocol(NSCopying);
    HRConformsToProtocolTypeAssert(copyingProtocol, stringClass);
    
    HRConformsToProtocolTypeAssert(copyingProtocol, string);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
