//
//  NSInvocationHelpersTests.m
//  NSInvocationHelpersTests
//
//  Created by Stephane Copin on 6/30/15.
//  Copyright (c) 2015 Stephane Copin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "NSInvocation+Helpers.h"

@interface NSInvocationHelpersTests : XCTestCase

@end

@implementation NSInvocationHelpersTests

- (void)setUp {
  [super setUp];
}

- (void)tearDown {
  [super tearDown];
}

- (void)testInvocationCategory {
  NSInvocation * invocation = [NSInvocation invocationWithMethodSignature:[self methodSignatureForSelector:@selector(methodSignatureExample:)]];
  [invocation setSelector:@selector(methodSignatureExample:)];
  [invocation setTarget:self];
  NSInteger parameter = 42;
  [invocation setArgument:&parameter atIndex:2];
  [invocation invoke];
  XCTAssertTrue([[invocation objectReturnValue] isEqualToNumber:@(parameter)]);
}

- (NSNumber *)methodSignatureExample:(NSInteger)parameter {
  return @(parameter);
}

@end
