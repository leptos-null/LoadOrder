#include <stdio.h>
#include <objc/runtime.h>

#ifndef putObjCMethodSignature
#define putObjCMethodSignature() printf("%s[%s %s]\n", object_isClass(self) ? "+" : "-", object_getClassName(self), sel_getName(_cmd))
#endif
