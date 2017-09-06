//
//  ASLayoutSpec+FluentChildrenTests.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 04/07/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#import "ASLayoutSpec+FluentChildren.h"

SpecBegin(ASLayoutSpec_FluentChildren)

it(@"should be able to fluently modify children of the stack", ^{
  ASStackLayoutSpec *stack = [[ASStackLayoutSpec alloc] init];
  id<ASLayoutElement> element1 = [[ASDisplayNode alloc] init];
  id<ASLayoutElement> element2 = [[ASLayoutSpec alloc] init];
  NSArray<id<ASLayoutElement>> *children = @[element1, element2];

  ASStackLayoutSpec *spec = [stack withChildren:children];

  expect(spec).to.equal(stack);
  expect(spec.children).to.haveCountOf(2);
  expect(spec.children).to.contain(element1);
  expect(spec.children).to.contain(element2);
});

SpecEnd
