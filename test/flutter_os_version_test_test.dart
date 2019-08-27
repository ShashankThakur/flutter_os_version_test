import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_os_version_test/flutter_os_version_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_os_version_test');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterOsVersionTest.platformVersion, '42');
  });
}
