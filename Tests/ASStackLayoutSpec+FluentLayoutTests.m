//
//  ASStackLayoutSpec+FluentLayoutTests.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 21/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#import "ASStackLayoutSpec+FluentLayout.h"

SpecBegin(ASStackLayoutSpec_FluentLayout)

describe(@"ASStackLayoutSpec_FluentLayout", ^{

  it(@"should be able to fluently modify spacing property of the stack", ^{
    ASStackLayoutSpec *stack = [[ASStackLayoutSpec alloc] init];
    CGFloat spacing = 10;

    ASStackLayoutSpec *spec = [stack withSpacing:spacing];

    expect(spec).to.equal(stack);
    expect(spec.spacing).to.equal(spacing);
  });

  it(@"should be able to fluently modify justifyContent property of the stack", ^{
    ASStackLayoutSpec *stack = [[ASStackLayoutSpec alloc] init];
    ASStackLayoutJustifyContent justifyContent = ASStackLayoutJustifyContentCenter;

    ASStackLayoutSpec *spec = [stack withJustifyContent:justifyContent];

    expect(spec).to.equal(stack);
    expect(spec.justifyContent).to.equal(justifyContent);
  });

  it(@"should be able to fluently modify alignItems property of the stack", ^{
    ASStackLayoutSpec *stack = [[ASStackLayoutSpec alloc] init];
    ASStackLayoutAlignItems alignItems = ASStackLayoutAlignItemsCenter;

    ASStackLayoutSpec *spec = [stack withAlignItems:alignItems];

    expect(spec).to.equal(stack);
    expect(spec.alignItems).to.equal(alignItems);
  });

});

SpecEnd
