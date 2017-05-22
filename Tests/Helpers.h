//
//  Helpers.h
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 21/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#ifndef Helpers_h
#define Helpers_h

// Helper functions to invoke selectors with non-object arguments and return values

extern id asdkfe_invokeSelector(id target, SEL selector);

extern id asdkfe_invokeSelectorUnary(id target, SEL selector, void *arg1);

extern id asdkfe_invokeSelectorBinary(id target, SEL selector, void *arg1, void *arg2);

extern id asdkfe_invokeSelectorTernary(id target, SEL selector, void *arg1, void *arg2, void *arg3);

#endif /* Helpers_h */
