//
//  STPSourceParamsTest.m
//  Stripe
//
//  Created by Ben Guo on 1/25/17.
//  Copyright © 2017 Stripe, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Stripe/Stripe.h>
#import "STPFixtures.h"

@interface STPSourceParamsTest : XCTestCase

@end

@implementation STPSourceParamsTest

- (void)testCardParamsWithCard {
    STPCardParams *card = [STPFixtures cardParams];

    STPSourceParams *source = [STPSourceParams cardParamsWithCard:card];
    NSDictionary *sourceCard = source.additionalAPIParameters[@"card"];
    XCTAssertEqualObjects(sourceCard[@"number"], card.number);
    XCTAssertEqualObjects(sourceCard[@"cvc"], card.cvc);
    XCTAssertEqualObjects(sourceCard[@"exp_month"], @(card.expMonth));
    XCTAssertEqualObjects(sourceCard[@"exp_year"], @(card.expYear));
    XCTAssertEqualObjects(source.owner[@"name"], card.name);
    NSDictionary *sourceAddress = source.owner[@"address"];
    XCTAssertEqualObjects(sourceAddress[@"line1"], card.addressLine1);
    XCTAssertEqualObjects(sourceAddress[@"line2"], card.addressLine2);
    XCTAssertEqualObjects(sourceAddress[@"city"], card.addressCity);
    XCTAssertEqualObjects(sourceAddress[@"state"], card.addressState);
    XCTAssertEqualObjects(sourceAddress[@"postal_code"], card.addressZip);
    XCTAssertEqualObjects(sourceAddress[@"country"], card.addressCountry);
}

@end
