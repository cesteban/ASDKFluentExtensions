//
//  Helpers.m
//  ASDKFluentExtensions
//
//  Created by César Estébanez Tascón on 21/05/2017.
//  Copyright © 2017 Cesar Estebanez Tascon. All rights reserved.
//

#import "Helpers.h"

#import <Foundation/Foundation.h>

id asdkfe_invokeSelectorWithArguments(id target, SEL selector, void *args[]) {
  NSMethodSignature *signature = [[target class] instanceMethodSignatureForSelector:selector];
  NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
  invocation.selector = selector;
  invocation.target = target;

  int i = 0;
  while (args[i] != NULL) {
    void *arg = args[i];
    [invocation setArgument:arg atIndex:2+i];
    i++;
  }

  [invocation invoke];

  void *tmp;
  [invocation getReturnValue:&tmp];
  id result = (__bridge id)tmp;

  return result;
}

id asdkfe_invokeSelector(id target, SEL selector) {
  return asdkfe_invokeSelectorWithArguments(target, selector, (void *[]){NULL});
}

id asdkfe_invokeSelectorUnary(id target, SEL selector, void *arg1) {
  return asdkfe_invokeSelectorWithArguments(target, selector, (void *[]){arg1, NULL});
}

id asdkfe_invokeSelectorBinary(id target, SEL selector, void *arg1, void *arg2) {
  return asdkfe_invokeSelectorWithArguments(target, selector, (void *[]){arg1, arg2, NULL});
}

id asdkfe_invokeSelectorTernary(id target, SEL selector, void *arg1, void *arg2, void *arg3) {
  return asdkfe_invokeSelectorWithArguments(target, selector, (void *[]){arg1, arg2, arg3, NULL});
}
