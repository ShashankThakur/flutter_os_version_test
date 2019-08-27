import 'dart:async';

import 'package:flutter/services.dart';

class FlutterOsVersionTest {
  static const MethodChannel _channel =
      const MethodChannel('flutter_os_version_test');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
