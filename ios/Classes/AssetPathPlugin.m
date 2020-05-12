#import "AssetPathPlugin.h"
#if __has_include(<asset_path/asset_path-Swift.h>)
#import <asset_path/asset_path-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "asset_path-Swift.h"
#endif

@implementation AssetPathPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAssetPathPlugin registerWithRegistrar:registrar];
}
@end
