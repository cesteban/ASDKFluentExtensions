//
//  ASLayoutElement+FluentStylingTests.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 21/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#import "ASDisplayNode+FluentStyling.h"
#import "ASLayoutSpec+FluentStyling.h"
#import "Helpers.h"

SharedExamplesBegin(ASLayoutElement_FluentStyling)

sharedExamplesFor(@"ASLayoutElement_FluentSizing", ^(NSDictionary *data) {

  it(@"should be able to fluently modify style.with", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASDimension width = ASDimensionMake(10);

    asdkfe_invokeSelectorUnary(element, @selector(withWidth:), &width);

    expect(ASDimensionEqualToDimension(element.style.width, width)).to.beTruthy();
  });

  it(@"should be able to fluently modify style.height", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASDimension height = ASDimensionMake(10);

    asdkfe_invokeSelectorUnary(element, @selector(withHeight:), &height);

    expect(ASDimensionEqualToDimension(element.style.height, height)).to.beTruthy();
  });

  it(@"should be able to fluently modify style.minWidth", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASDimension minWidth = ASDimensionMake(10);

    asdkfe_invokeSelectorUnary(element, @selector(withMinWidth:), &minWidth);

    expect(ASDimensionEqualToDimension(element.style.minWidth, minWidth)).to.beTruthy();
  });

  it(@"should be able to fluently modify style.maxWidth", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASDimension maxWidth = ASDimensionMake(10);

    asdkfe_invokeSelectorUnary(element, @selector(withMaxWidth:), &maxWidth);

    expect(ASDimensionEqualToDimension(element.style.maxWidth, maxWidth)).to.beTruthy();
  });

  it(@"should be able to fluently modify style.minHeight", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASDimension minHeight = ASDimensionMake(10);

    asdkfe_invokeSelectorUnary(element, @selector(withMinHeight:), &minHeight);

    expect(ASDimensionEqualToDimension(element.style.minHeight, minHeight)).to.beTruthy();
  });

  it(@"should be able to fluently modify style.maxHeight", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASDimension maxHeight = ASDimensionMake(10);

    asdkfe_invokeSelectorUnary(element, @selector(withMaxHeight:), &maxHeight);

    expect(ASDimensionEqualToDimension(element.style.maxHeight, maxHeight)).to.beTruthy();
  });

});


sharedExamplesFor(@"ASLayoutElement_FluentSizeHelpers", ^(NSDictionary *data) {

  it(@"should be able to fluently modify style.preferredSize", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGSize size = CGSizeMake(10, 10);

    asdkfe_invokeSelectorUnary(element, @selector(withPreferredSize:), &size);

    expect(expect(CGSizeEqualToSize(element.style.preferredSize, size))).to.beTruthy();
  });
  
  it(@"should be able to fluently modify style.minSize", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGSize size = CGSizeMake(10, 10);

    asdkfe_invokeSelectorUnary(element, @selector(withMinSize:), &size);

    expect(ASDimensionEqualToDimension(element.style.minWidth, ASDimensionMakeWithPoints(size.width))).to.beTruthy();
    expect(ASDimensionEqualToDimension(element.style.minHeight, ASDimensionMakeWithPoints(size.height))).to.beTruthy();
  });

  it(@"should be able to fluently modify style.maxSize", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGSize size = CGSizeMake(10, 10);

    asdkfe_invokeSelectorUnary(element, @selector(withMaxSize:), &size);

    expect(ASDimensionEqualToDimension(element.style.maxWidth, ASDimensionMakeWithPoints(size.width))).to.beTruthy();
    expect(ASDimensionEqualToDimension(element.style.maxHeight, ASDimensionMakeWithPoints(size.height))).to.beTruthy();
  });

  it(@"should be able to fluently modify style.preferredLayoutSize", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASLayoutSize layoutSize = ASLayoutSizeMake(ASDimensionMake(10), ASDimensionMake(10));

    asdkfe_invokeSelectorUnary(element, @selector(withPreferredLayoutSize:), &layoutSize);

    expect(ASDimensionEqualToDimension(element.style.preferredLayoutSize.width, layoutSize.width)).to.beTruthy();
    expect(ASDimensionEqualToDimension(element.style.preferredLayoutSize.height, layoutSize.height)).to.beTruthy();
  });

  it(@"should be able to fluently modify style.minLayoutSize", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASLayoutSize layoutSize = ASLayoutSizeMake(ASDimensionMake(10), ASDimensionMake(10));

    asdkfe_invokeSelectorUnary(element, @selector(withMinLayoutSize:), &layoutSize);

    expect(ASDimensionEqualToDimension(element.style.minLayoutSize.width, layoutSize.width)).to.beTruthy();
    expect(ASDimensionEqualToDimension(element.style.minLayoutSize.height, layoutSize.height)).to.beTruthy();
  });

  it(@"should be able to fluently modify style.maxLayoutSize", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASLayoutSize layoutSize = ASLayoutSizeMake(ASDimensionMake(10), ASDimensionMake(10));

    asdkfe_invokeSelectorUnary(element, @selector(withMaxLayoutSize:), &layoutSize);

    expect(ASDimensionEqualToDimension(element.style.maxLayoutSize.width, layoutSize.width)).to.beTruthy();
    expect(ASDimensionEqualToDimension(element.style.maxLayoutSize.height, layoutSize.height)).to.beTruthy();
  });

});

sharedExamplesFor(@"ASLayoutElement_FluentStackLayoutElement", ^(NSDictionary *data) {

  it(@"should be able to fluently modify style.spacingBefore", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGFloat spacingBefore = 10;

    asdkfe_invokeSelectorUnary(element, @selector(withSpacingBefore:), &spacingBefore);

    expect(element.style.spacingBefore).to.equal(spacingBefore);
  });

  it(@"should be able to fluently modify style.spacingAfter", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGFloat spacingAfter = 10;

    asdkfe_invokeSelectorUnary(element, @selector(withSpacingAfter:), &spacingAfter);

    expect(element.style.spacingAfter).to.equal(spacingAfter);
  });

  it(@"should be able to fluently modify style.flexGrow", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGFloat flexGrow = 1;

    asdkfe_invokeSelectorUnary(element, @selector(withFlexGrow:), &flexGrow);

    expect(element.style.flexGrow).to.equal(flexGrow);
  });

  it(@"should be able to fluently modify style.flexShrink", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGFloat flexShrink = 1;

    asdkfe_invokeSelectorUnary(element, @selector(withFlexShrink:), &flexShrink);

    expect(element.style.flexShrink).to.equal(flexShrink);
  });


  it(@"should be able to fluently modify style.flexBasis", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASDimension flexBasis = ASDimensionMake(10);

    asdkfe_invokeSelectorUnary(element, @selector(withFlexBasis:), &flexBasis);

    expect(ASDimensionEqualToDimension(element.style.flexBasis, flexBasis));
  });

  it(@"should be able to fluently modify style.alignSelf", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASStackLayoutAlignSelf alignSelf = ASStackLayoutAlignSelfCenter;

    asdkfe_invokeSelectorUnary(element, @selector(withAlignSelf:), &alignSelf);

    expect(element.style.alignSelf).to.equal(alignSelf);
  });


  it(@"should be able to fluently modify style.ascender", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGFloat ascender = 10;

    asdkfe_invokeSelectorUnary(element, @selector(withAscender:), &ascender);

    expect(element.style.ascender).to.equal(ascender);
  });

  it(@"should be able to fluently modify style.descender", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGFloat descender = 10;

    asdkfe_invokeSelectorUnary(element, @selector(withDescender:), &descender);

    expect(element.style.descender).to.equal(descender);
  });

});

SharedExamplesEnd


SpecBegin(ASDisplayNode_FluentStyling)

itShouldBehaveLike(@"ASLayoutElement_FluentSizing", @{@"element": [[ASDisplayNode alloc] init]});
itShouldBehaveLike(@"ASLayoutElement_FluentSizeHelpers", @{@"element": [[ASDisplayNode alloc] init]});
itShouldBehaveLike(@"ASLayoutElement_FluentStackLayoutElement", @{@"element": [[ASDisplayNode alloc] init]});

SpecEnd


SpecBegin(ASLayoutSpec_FluentStyling)

itShouldBehaveLike(@"ASLayoutElement_FluentSizing", @{@"element": [[ASLayoutSpec alloc] init]});
itShouldBehaveLike(@"ASLayoutElement_FluentSizeHelpers", @{@"element": [[ASLayoutSpec alloc] init]});
itShouldBehaveLike(@"ASLayoutElement_FluentStackLayoutElement", @{@"element": [[ASLayoutSpec alloc] init]});

SpecEnd

