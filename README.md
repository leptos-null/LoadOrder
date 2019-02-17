## LoadOrder

When writing tweaks, it's important to understand "the order of initialization." Apple describes the order in the [+[NSObject load] documentation](https://developer.apple.com/documentation/objectivec/nsobject/1418815-load?language=objc). 

This project includes an app, a framework linked against by the app, and a library loaded by [Substrate](http://www.cydiasubstrate.com). Each function and method is logged to `stdout`. The output is below:

```txt
+[LSTweakClass load]
void tweakConstructor()
+[LSFrameworkClass load]
void frameworkConstructor()
+[LSAppDelegate load]
void appConstructor()
int main(int, char **)
+[LSFrameworkClass initialize]
+[LSFrameworkClass exampleCallMeFromMain]
+[LSAppDelegate initialize]
```

MobileSubstrate uses the `DYLD_INSERT_LIBRARIES` enviornment variable (more information availible in [dyld(1)](https://www.freebsd.org/cgi/man.cgi?query=dyld&apropos=0&sektion=0&manpath=Darwin+8.0.1%2Fppc&format=html)) to load itself into processes (which subsequently `dlopen(lib, RTLD_NOW)`s other libraries). The above output shows that libraries listed in `DYLD_INSERT_LIBRARIES` are initialized before the process that it's set for.  

### Interesting Reading

[Blocking Code Injection on iOS and OS X](https://pewpewthespells.com/blog/blocking_code_injection_on_ios_and_os_x.html) ([mirror](./blocking_code_injection_on_ios_and_os_x.md))
