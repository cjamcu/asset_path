import 'dart:async';

import 'package:flutter/services.dart';

class AssetPath {
  static const MethodChannel _channel =
      const MethodChannel('asset_path');

  static Future<String> get path async {
    final String version = await _channel.invokeMethod('path');
    return version;
  }
}
