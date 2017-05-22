//
//  ASLayoutSpec+FluentSpacerTests.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 21/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#import "ASLayoutSpec+FluentSpacer.h"

SpecBegin(ASDisplayNode_FluentSpacer)

describe(@"ASDisplayNode_FluentSpacer", ^{
  it(@"should be able to generate spacers", ^{
    ASLayoutSpec *spacer = [ASLayoutSpec spacer];
    expect(spacer).to.beInstanceOf([ASLayoutSpec class]);
    expect(spacer.style.flexGrow).to.equal(1);
  });
});

SpecEnd
