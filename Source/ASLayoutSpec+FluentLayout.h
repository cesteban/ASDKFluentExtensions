//
//  ASLayoutSpec+FluentLayout.h
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ASLayoutSpec (FluentLayout)

- (ASWrapperLayoutSpec *)wrap;
- (ASInsetLayoutSpec *)withInset:(UIEdgeInsets)insets;
- (ASOverlayLayoutSpec *)withOverlay:(id<ASLayoutElement>)overlay;
- (ASBackgroundLayoutSpec *)withBackground:(id<ASLayoutElement>)background;
- (ASCenterLayoutSpec *)center;
- (ASCenterLayoutSpec *)centerWithCenteringOptions:(ASCenterLayoutSpecCenteringOptions)centeringOptions;
- (ASCenterLayoutSpec *)centerWithSizingOptions:(ASCenterLayoutSpecSizingOptions)sizingOptions;
- (ASCenterLayoutSpec *)centerWithCenteringOptions:(ASCenterLayoutSpecCenteringOptions)centeringOptions sizingOptions:(ASCenterLayoutSpecSizingOptions)sizingOptions;
- (ASRatioLayoutSpec *)withRatio:(CGFloat)ratio;
- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal NS_SWIFT_NAME(withRelativePosition(horizontal:));
- (ASRelativeLayoutSpec *)withRelativePositionVertical:(ASRelativeLayoutSpecPosition)vertical NS_SWIFT_NAME(withRelativePosition(vertical:));
- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal vertical:(ASRelativeLayoutSpecPosition)vertical NS_SWIFT_NAME(withRelativePosition(horizontal:vertical:));
- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal vertical:(ASRelativeLayoutSpecPosition)vertical sizing:(ASRelativeLayoutSpecSizingOption)sizing NS_SWIFT_NAME(withRelativePosition(horizontal:vertical:sizing:));

@end

NS_ASSUME_NONNULL_END
