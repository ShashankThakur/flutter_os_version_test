#import "FlutterOsVersionTestPlugin.h"
#import <flutter_os_version_test/flutter_os_version_test-Swift.h>

@implementation FlutterOsVersionTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterOsVersionTestPlugin registerWithRegistrar:registrar];
}
@end
