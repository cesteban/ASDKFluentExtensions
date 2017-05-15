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

/**
 * @abstract Extension of ASLayoutSpec that enables writting layout code using a fluent API.
 * @discussion Methods of this category will create the appropriate ASLayoutSpec subclass
 * passing self as its child, and then return the spec.
 * This enables a composable idiom for layout and styling code. Since the return value is always
 * an ASLayoutElement, calls to fluent methods can be composed with other calls to create complex
 * layouts in a very readable style:
 *
 * @code ASStackLayoutSpec
  .vertical()
  .withSpacing(20)
  .withJustifyContent(.center)
  .withChildren([
    topSeparator
      .withFlexGrow(1.0),
    textNode
      .withAlignSelf(.center),
    bottomSeparator
      .withFlexGrow(1.0)
    ])
  .withInset(UIEdgeInsets(top: 60, left: 0, bottom: 60, right: 0))
 *
 */
@interface ASLayoutSpec (FluentLayout)

/**
 * Wraps the caller in an ASWrapperLayoutSpec and returns the spec.
 */
- (ASWrapperLayoutSpec *)wrap;

/**
 * Wraps the caller in an ASInsetLayoutSpec with the specified insets, and returns the spec.
 */
- (ASInsetLayoutSpec *)withInset:(UIEdgeInsets)insets;

/**
 * Wraps the caller in an ASOverlayLayoutSpec, passign self as the child of the spec, and
 * overlay as the overlay element. Then returns the spec.
 */
- (ASOverlayLayoutSpec *)withOverlay:(id<ASLayoutElement>)overlay;

/**
 * Wraps the caller in an ASBackgroundLayoutSpec, passign self as the child of the spec,
 * and background as the background element. Then returns the spec.
 */
- (ASBackgroundLayoutSpec *)withBackground:(id<ASLayoutElement>)background;

/**
 * Wraps the caller in an ASCenterLayoutSpec with the default parameters, and returns the spec.
 */
- (ASCenterLayoutSpec *)center;

/**
 * Wraps the caller in an ASCenterLayoutSpec with the specified centeringOptions, and returns the spec.
 */
- (ASCenterLayoutSpec *)centerWithCenteringOptions:(ASCenterLayoutSpecCenteringOptions)centeringOptions;

/**
 * Wraps the caller in an ASCenterLayoutSpec with the specified sizingOptions, and returns the spec.
 */
- (ASCenterLayoutSpec *)centerWithSizingOptions:(ASCenterLayoutSpecSizingOptions)sizingOptions;

/**
 * Wraps the caller in an ASCenterLayoutSpec with the specified centeringOptions and sizingOptions,
 * and returns the spec.
 */
- (ASCenterLayoutSpec *)centerWithCenteringOptions:(ASCenterLayoutSpecCenteringOptions)centeringOptions sizingOptions:(ASCenterLayoutSpecSizingOptions)sizingOptions;

/**
 * Wraps the caller in an ASRatioLayoutSpec with the specified ratio and returns the spec.
 */
- (ASRatioLayoutSpec *)withRatio:(CGFloat)ratio;

/**
 * Wraps the caller in an ASRelativeLayoutSpec with the specified horizontal position and returns the spec.
 */
- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal NS_SWIFT_NAME(withRelativePosition(horizontal:));

/**
 * Wraps the caller in an ASRelativeLayoutSpec with the specified vertical position and returns the spec.
 */
- (ASRelativeLayoutSpec *)withRelativePositionVertical:(ASRelativeLayoutSpecPosition)vertical NS_SWIFT_NAME(withRelativePosition(vertical:));

/**
 * Wraps the caller in an ASRelativeLayoutSpec with the specified horizontal and vertical position, and
 * returns the spec.
 */
- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal vertical:(ASRelativeLayoutSpecPosition)vertical NS_SWIFT_NAME(withRelativePosition(horizontal:vertical:));

/**
 * Wraps the caller in an ASRelativeLayoutSpec with the specified horizontal position, vertical position,
 * and the sizing options. Then returns the spec.
 */
- (ASRelativeLayoutSpec *)withRelativePositionHorizontal:(ASRelativeLayoutSpecPosition)horizontal vertical:(ASRelativeLayoutSpecPosition)vertical sizing:(ASRelativeLayoutSpecSizingOption)sizing NS_SWIFT_NAME(withRelativePosition(horizontal:vertical:sizing:));

@end

NS_ASSUME_NONNULL_END
