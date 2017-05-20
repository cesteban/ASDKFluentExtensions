//
//  ASDisplayNode+FluentLayoutTests.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 20/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ASDisplayNode+FluentLayout.h"

@interface ASDisplayNode_FluentLayoutTests : XCTestCase

@end

@implementation ASDisplayNode_FluentLayoutTests

- (void)testWrap
{
  ASDisplayNode *node = [[ASDisplayNode alloc] init];

  ASWrapperLayoutSpec *spec = [node wrap];

  XCTAssert(spec.child == node);
}

- (void)testWithInset
{
  ASDisplayNode *node = [[ASDisplayNode alloc] init];
  UIEdgeInsets insets = UIEdgeInsetsZero;

  ASInsetLayoutSpec *spec = [node withInset:insets];

  XCTAssert(spec.child == node);
  XCTAssert(UIEdgeInsetsEqualToEdgeInsets(spec.insets, insets));
}

- (void)testWithOverlay
{
  ASDisplayNode *node = [[ASDisplayNode alloc] init];
  ASDisplayNode *overlay = [[ASDisplayNode alloc] init];

  ASOverlayLayoutSpec *spec = [node withOverlay:overlay];

  XCTAssert(spec.child == node);
  XCTAssert(spec.overlay == overlay);
}

- (void)testWithBackground
{
  ASDisplayNode *node = [[ASDisplayNode alloc] init];
  ASDisplayNode *background = [[ASDisplayNode alloc] init];

  ASBackgroundLayoutSpec *spec = [node withBackground:background];

  XCTAssert(spec.child == node);
  XCTAssert(spec.background == background);
}


@end
