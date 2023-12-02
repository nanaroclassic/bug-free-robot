/*
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <Foundation/Foundation.h>
#import <XCTest/XCTest.h>

NS_ASSUME_NONNULL_BEGIN

// Hack to be able to test from Swift code that specific NSExceptions were raised.
@interface XCTestCase (Assertions)

- (void)assertThrowsSpecificNamed:(NSExceptionName)exceptionName block:(void (^)(void))block;

@end

NS_ASSUME_NONNULL_END