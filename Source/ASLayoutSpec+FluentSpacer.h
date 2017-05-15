//
//  ASLayoutSpec+FluentSpacer.h
//  ASDKFluentExtensions
//
//  Copyright © 2017 Cesar Estebanez Tascon.
//  This software may be modified and distributed under the terms
//  of the MIT license.  See the LICENSE file for details.
//

#import <AsyncDisplayKit/AsyncDisplayKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
* @abstract Extension of ASLayoutSpec for conveniently creating spacers.
*/
@interface ASLayoutSpec (FluentSpacer)

/**
 * Creates and returns a spacer (i.e. an ASLayoutSpec with flexGrow = 1.0)
 */
+ (ASLayoutSpec *)spacer;

@end

NS_ASSUME_NONNULL_END
