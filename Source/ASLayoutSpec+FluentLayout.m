//
//  ASLayoutSpec+FluentLayout.m
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import "ASLayoutSpec+FluentLayout.h"
#import "ASLayoutSpec+FluentStyling.h"

@implementation ASLayoutSpec (FluentLayout)

- (ASWrapperLayoutSpec *)wrap
{
    return [ASWrapperLayoutSpec wrapperWithLayoutElement:self];
}

- (ASInsetLayoutSpec *)withInset:(UIEdgeInsets)insets
{
    return [ASInsetLayoutSpec insetLayoutSpecWithInsets:insets child:self];
}

- (ASOverlayLayoutSpec *)withOverlay:(id<ASLayoutElement>)overlay
{
  return [ASOverlayLayoutSpec overlayLayoutSpecWithChild:self overlay:overlay];
}

- (ASBackgroundLayoutSpec *)withBackground:(id<ASLayoutElement>)background
{
    return [ASBackgroundLayoutSpec backgroundLayoutSpecWithChild:self background:background];
}

- (ASCenterLayoutSpec *)center
{
    return [ASCenterLayoutSpec centerLayoutSpecWithCenteringOptions:ASCenterLayoutSpecCenteringNone sizingOptions:ASCenterLayoutSpecSizingOptionDefault child:self];
}

- (ASCenterLayoutSpec *)centerWithCenteringOptions:(ASCenterLayoutSpecCenteringOptions)centeringOptions
{
    return [ASCenterLayoutSpec centerLayoutSpecWithCenteringOptions:centeringOptions sizingOptions:ASCenterLayoutSpecSizingOptionDefault child:self];
}

- (ASCenterLayoutSpec *)centerWithSizingOptions:(ASCenterLayoutSpecSizingOptions)sizingOptions
{
    return [ASCenterLayoutSpec centerLayoutSpecWithCenteringOptions:ASCenterLayoutSpecCenteringNone sizingOptions:sizingOptions child:self];
}

- (ASCenterLayoutSpec *)centerWithCenteringOptions:(ASCenterLayoutSpecCenteringOptions)centeringOptions sizingOptions:(ASCenterLayoutSpecSizingOptions)sizingOptions
{
    return [ASCenterLayoutSpec centerLayoutSpecWithCenteringOptions:centeringOptions sizingOptions:sizingOptions child:self];
}

- (ASRatioLayoutSpec *)withRatio:(CGFloat)ratio
{
  return [ASRatioLayoutSpec ratioLayoutSpecWithRatio:ratio child:self];
}

- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal
{
  return [ASRelativeLayoutSpec relativePositionLayoutSpecWithHorizontalPosition:horizontal verticalPosition:ASRelativeLayoutSpecPositionNone sizingOption:ASRelativeLayoutSpecSizingOptionDefault child:self];
}

- (ASRelativeLayoutSpec *)withRelativePositionVertical:(ASRelativeLayoutSpecPosition)vertical
{
  return [ASRelativeLayoutSpec relativePositionLayoutSpecWithHorizontalPosition:ASRelativeLayoutSpecPositionNone verticalPosition:vertical sizingOption:ASRelativeLayoutSpecSizingOptionDefault child:self];
}

- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal vertical:(ASRelativeLayoutSpecPosition)vertical
{
  return [ASRelativeLayoutSpec relativePositionLayoutSpecWithHorizontalPosition:horizontal verticalPosition:vertical sizingOption:ASRelativeLayoutSpecSizingOptionDefault child:self];
}

- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal vertical:(ASRelativeLayoutSpecPosition)vertical sizing:(ASRelativeLayoutSpecSizingOption)sizing
{
  return [ASRelativeLayoutSpec relativePositionLayoutSpecWithHorizontalPosition:horizontal verticalPosition:vertical sizingOption:sizing child:self];
}

@end
