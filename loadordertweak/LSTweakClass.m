//
//  LSTweakClass.m
//  loadordertweak
//
//  Created by Leptos on 8/23/18.
//  Copyright © 2018 Leptos. All rights reserved.
//

#import "LSTweakClass.h"

#import "../LSPutMethodSignature.h"

@implementation LSTweakClass

+ (void)load {
    putObjCMethodSignature();
}

+ (void)initialize {
    putObjCMethodSignature();
}

@end

__attribute__((constructor)) static void tweakConstructor() {
    puts(__PRETTY_FUNCTION__);
}
