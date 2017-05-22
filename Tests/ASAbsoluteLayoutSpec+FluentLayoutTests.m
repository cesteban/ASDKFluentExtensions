//
//  ASAbsoluteLayoutSpec+FluentLayoutTests.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 21/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#import "ASAbsoluteLayoutSpec+FluentLayout.h"

SpecBegin(ASAbsoluteLayoutSpec_FluentLayout)

describe(@"ASAbsoluteLayoutSpec_FluentLayout", ^{

  it(@"should be able to fluently modify children of the absolute layout", ^{
    ASAbsoluteLayoutSpec *absolute = [[ASAbsoluteLayoutSpec alloc] init];
    id<ASLayoutElement> element1 = [[ASDisplayNode alloc] init];
    id<ASLayoutElement> element2 = [[ASLayoutSpec alloc] init];
    NSArray<id<ASLayoutElement>> *children = @[element1, element2];

    ASAbsoluteLayoutSpec *spec = [absolute withChildren:children];

    expect(spec).to.equal(absolute);
    expect(spec.children).to.haveCountOf(2);
    expect(spec.children).to.contain(element1);
    expect(spec.children).to.contain(element2);
  });

  it(@"should be able to fluently modify sizing property of the stack", ^{
    ASAbsoluteLayoutSpec *absolute = [[ASAbsoluteLayoutSpec alloc] init];
    ASAbsoluteLayoutSpecSizing sizing = ASAbsoluteLayoutSpecSizingSizeToFit;

    ASAbsoluteLayoutSpec *spec = [absolute withSizing:sizing];

    expect(spec).to.equal(absolute);
    expect(spec.sizing).to.equal(sizing);
  });
  
});

SpecEnd
