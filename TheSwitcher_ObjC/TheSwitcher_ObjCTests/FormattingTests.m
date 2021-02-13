//
//  FormattingTests.m
//  TheSwitcher_ObjcTests
//
//  Created by Fábio Maciel de Sousa on 13/02/21.
//

#import <XCTest/XCTest.h>
#import "Formatting.h"

@interface FormattingTests : XCTestCase

@end

@implementation FormattingTests

- (void)testStringFormatting {
    NSString *sut = @"Kitchen";
    XCTAssertTrue([[sut formattedDivision] isEqual:@"Your Kitchen light is"]);
}

@end
