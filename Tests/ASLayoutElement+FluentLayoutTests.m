//
//  ASLayoutElement+FluentLayoutTests.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 20/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>

#import "ASDisplayNode+FluentLayout.h"
#import "ASLayoutSpec+FluentLayout.h"
#import "Helpers.h"

SharedExamplesBegin(ASLayoutElement_FluentLayout)

sharedExamplesFor(@"ASLayoutElement_FluentLayout", ^(NSDictionary *data) {
  it(@"should be possible to wrap the element", ^{
    id<ASLayoutElement> element = data[@"element"];

    ASWrapperLayoutSpec *spec = asdkfe_invokeSelector(element, @selector(wrap));

    expect(spec).beInstanceOf([ASWrapperLayoutSpec class]);
    expect(spec.child).to.equal(element);
  });

  it(@"should be possible to inset the element", ^{
    id<ASLayoutElement> element = data[@"element"];
    UIEdgeInsets insets = UIEdgeInsetsMake(10, 10, 10, 10);

    ASInsetLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(withInset:), &insets);

    expect(spec).beInstanceOf([ASInsetLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(UIEdgeInsetsEqualToEdgeInsets(spec.insets, insets)).to.beTruthy();
  });

  it(@"should be possible to overlay the element with another element", ^{
    id<ASLayoutElement> element = data[@"element"];
    id<ASLayoutElement> overlay = [[ASDisplayNode alloc] init];

    ASOverlayLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(withOverlay:), &overlay);

    expect(spec).beInstanceOf([ASOverlayLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.overlay).to.equal(overlay);
  });

  it(@"should be possible to background the element with another element", ^{
    id<ASLayoutElement> element = data[@"element"];
    id<ASLayoutElement> background = [[ASDisplayNode alloc] init];

    ASBackgroundLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(withBackground:), &background);

    expect(spec).beInstanceOf([ASBackgroundLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.background).to.equal(background);
  });


  it(@"should be possible to center the element", ^{
    id<ASLayoutElement> element = data[@"element"];

    ASCenterLayoutSpec *spec = asdkfe_invokeSelector(element, @selector(center));

    expect(spec).beInstanceOf([ASCenterLayoutSpec class]);
    expect(spec.child).to.equal(element);
  });

  it(@"should be possible to center the element passing centering options", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASCenterLayoutSpecCenteringOptions centeringOptions = ASCenterLayoutSpecCenteringXY;

    ASCenterLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(centerWithCenteringOptions:), &centeringOptions);

    expect(spec).beInstanceOf([ASCenterLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.centeringOptions).to.equal(centeringOptions);
  });

  it(@"should be possible to center the element passing sizing options", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASCenterLayoutSpecSizingOptions sizingOptions = ASCenterLayoutSpecSizingOptionMinimumXY;

    ASCenterLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(centerWithSizingOptions:), &sizingOptions);

    expect(spec).beInstanceOf([ASCenterLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.sizingOptions).to.equal(sizingOptions);
  });

  it(@"should be possible to center the element passing centering and sizing options", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASCenterLayoutSpecCenteringOptions centeringOptions = ASCenterLayoutSpecCenteringXY;
    ASCenterLayoutSpecSizingOptions sizingOptions = ASCenterLayoutSpecSizingOptionMinimumXY;

    ASCenterLayoutSpec *spec = asdkfe_invokeSelectorBinary(element, @selector(centerWithCenteringOptions:sizingOptions:), &centeringOptions, &sizingOptions);

    expect(spec).beInstanceOf([ASCenterLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.centeringOptions).to.equal(centeringOptions);
    expect(spec.sizingOptions).to.equal(sizingOptions);
  });

  it(@"should be possible to wrap the element into a ASRatioLayoutSpec", ^{
    id<ASLayoutElement> element = data[@"element"];
    CGFloat ratio = 1;

    ASRatioLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(withRatio:), &ratio);

    expect(spec).beInstanceOf([ASRatioLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.ratio).to.equal(ratio);
  });

  it(@"should be possible to define a relative horizontal position for the element", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASRelativeLayoutSpecPosition horizontalPosition = ASRelativeLayoutSpecPositionCenter;

    ASRelativeLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(withRelativePositionHorizontal:), &horizontalPosition);

    expect(spec).beInstanceOf([ASRelativeLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.horizontalPosition).to.equal(horizontalPosition);
  });

  it(@"should be possible to define a relative vertical position for the element", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASRelativeLayoutSpecPosition verticalPosition = ASRelativeLayoutSpecPositionCenter;

    ASRelativeLayoutSpec *spec = asdkfe_invokeSelectorUnary(element, @selector(withRelativePositionVertical:), &verticalPosition);

    expect(spec).beInstanceOf([ASRelativeLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.verticalPosition).to.equal(verticalPosition);
  });

  it(@"should be possible to define relative horizontal and vertical positions for the element", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASRelativeLayoutSpecPosition horizontalPosition = ASRelativeLayoutSpecPositionCenter;
    ASRelativeLayoutSpecPosition verticalPosition = ASRelativeLayoutSpecPositionCenter;

    ASRelativeLayoutSpec *spec = asdkfe_invokeSelectorBinary(element, @selector(withRelativePositionHorizontal:vertical:), &horizontalPosition, &verticalPosition);

    expect(spec).beInstanceOf([ASRelativeLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.horizontalPosition).to.equal(horizontalPosition);
    expect(spec.verticalPosition).to.equal(verticalPosition);
  });

  it(@"should be possible to define relative horizontal and vertical positions for the element with sizing options", ^{
    id<ASLayoutElement> element = data[@"element"];
    ASRelativeLayoutSpecPosition horizontalPosition = ASRelativeLayoutSpecPositionCenter;
    ASRelativeLayoutSpecPosition verticalPosition = ASRelativeLayoutSpecPositionCenter;
    ASRelativeLayoutSpecSizingOption sizingOption = ASRelativeLayoutSpecSizingOptionMinimumSize;

    ASRelativeLayoutSpec *spec = asdkfe_invokeSelectorTernary(element, @selector(withRelativePositionHorizontal:vertical:sizing:), &horizontalPosition, &verticalPosition, &sizingOption);

    expect(spec).beInstanceOf([ASRelativeLayoutSpec class]);
    expect(spec.child).to.equal(element);
    expect(spec.horizontalPosition).to.equal(horizontalPosition);
    expect(spec.verticalPosition).to.equal(verticalPosition);
    expect(spec.sizingOption).to.equal(sizingOption);
  });

});

SharedExamplesEnd


SpecBegin(ASDisplayNode_FluentLayout)

itShouldBehaveLike(@"ASLayoutElement_FluentLayout", @{@"element" : [[ASDisplayNode alloc] init]});

SpecEnd


SpecBegin(ASLayoutSpec_FluentLayout)

itShouldBehaveLike(@"ASLayoutElement_FluentLayout", @{@"element" : [[ASLayoutSpec alloc] init]});

SpecEnd

