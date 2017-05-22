//
//  ASLayoutSpec+FluentStyling.h
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
 * @discussion Methods of this category will modify the style property of the caller and return
 * self.
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
@interface ASLayoutSpec (FluentStyling)

#pragma mark - Sizing

/**
 * Modifies the style.width property of the caller and returns self.
 */
- (instancetype)withWidth:(ASDimension)width;

/**
 * Modifies the style.height property of the caller and returns self.
 */
- (instancetype)withHeight:(ASDimension)height;

/**
 * Modifies the style.minWidth property of the caller and returns self.
 */
- (instancetype)withMinWidth:(ASDimension)minWidth;

/**
 * Modifies the style.maxWidth property of the caller and returns self.
 */
- (instancetype)withMaxWidth:(ASDimension)maxWidth;

/**
 * Modifies the style.minHeight property of the caller and returns self.
 */
- (instancetype)withMinHeight:(ASDimension)minHeight;

/**
 * Modifies the style.maxHeight property of the caller and returns self.
 */
- (instancetype)withMaxHeight:(ASDimension)maxHeight;

#pragma mark - Size Helpers

/**
 * Modifies the style.preferredSize property of the caller and returns self.
 */
- (instancetype)withPreferredSize:(CGSize)preferredSize;

/**
 * Modifies the style.minSize property of the caller and returns self.
 */
- (instancetype)withMinSize:(CGSize)minSize;

/**
 * Modifies the style.maxSize property of the caller and returns self.
 */
- (instancetype)withMaxSize:(CGSize)maxSize;

/**
 * Modifies the style.preferredLayoutSize property of the caller and returns self.
 */
- (instancetype)withPreferredLayoutSize:(ASLayoutSize)preferredLayoutSize;

/**
 * Modifies the style.minLayoutSize property of the caller and returns self.
 */
- (instancetype)withMinLayoutSize:(ASLayoutSize)minLayoutSize;

/**
 * Modifies the style.maxLayoutSize property of the caller and returns self.
 */
- (instancetype)withMaxLayoutSize:(ASLayoutSize)maxLayoutSize;

#pragma mark - ASStackLayoutElement

/**
 * Modifies the style.spacingBefore property of the caller and returns self.
 */
- (instancetype)withSpacingBefore:(CGFloat)spacingBefore;

/**
 * Modifies the style.spacingAfter property of the caller and returns self.
 */
- (instancetype)withSpacingAfter:(CGFloat)spacingAfter;

/**
 * Modifies the style.flexGrow property of the caller and returns self.
 */
- (instancetype)withFlexGrow:(CGFloat)flexGrow;

/**
 * Modifies the style.flexShrink property of the caller and returns self.
 */
- (instancetype)withFlexShrink:(CGFloat)flexShrink;

/**
 * Modifies the style.flexBasis property of the caller and returns self.
 */
- (instancetype)withFlexBasis:(ASDimension)flexBasis;

/**
 * Modifies the style.alignSelf property of the caller and returns self.
 */
- (instancetype)withAlignSelf:(ASStackLayoutAlignSelf)alignSelf;

/**
 * Experimental: Modifies the style.alignSelf property of the caller and returns self.
 */
- (instancetype)alignSelf:(ASStackLayoutAlignSelf)alignSelf;

/**
 * Modifies the style.ascender property of the caller and returns self.
 */
- (instancetype)withAscender:(CGFloat)ascender;

/**
 * Modifies the style.descender property of the caller and returns self.
 */
- (instancetype)withDescender:(CGFloat)descender;

#pragma mark - ASAbsoluteLayoutElement

/**
 * Modifies the style.layoutPosition property of the caller and returns self.
 */
- (instancetype)withLayoutPosition:(CGPoint)layoutPosition;

@end

NS_ASSUME_NONNULL_END
