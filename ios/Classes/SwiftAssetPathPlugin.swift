import Flutter
import UIKit

public class SwiftAssetPathPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "asset_path", binaryMessenger: registrar.messenger())
    let instance = SwiftAssetPathPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
   let baseUrl = URL(fileURLWithPath:  Bundle.main.bundlePath, isDirectory: true)
       result(baseUrl.path)
  }
}
