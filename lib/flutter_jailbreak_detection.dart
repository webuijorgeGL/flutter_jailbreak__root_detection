import 'dart:async';

import 'package:flutter/services.dart';

class FlutterJailbreakDetection {
  static const MethodChannel _channel =
      const MethodChannel('flutter_jailbreak_detection');

  /// IOSSecuritySuite.amIJailbroken on iOS and rootBeer.isRooted on Android
  static Future<bool> get jailbroken async {
    bool? jailbroken = await _channel.invokeMethod<bool>('jailbroken');
    return jailbroken ?? true;
  }

  /// IOSSecuritySuite.amIRunInEmulator on iOS
  static Future<bool> get emulatorRun async {
    bool? emulatorRun = await _channel.invokeMethod<bool>('emulatorRun');
    return emulatorRun ?? true;
  }

  /// IOSSecuritySuite.amIDebugged on iOS
  static Future<bool> get debugMode async {
    bool? debugMode = await _channel.invokeMethod<bool>('debugMode');
    return debugMode ?? true;
  }

  /// Settings.Global.DEVELOPMENT_SETTINGS_ENABLED on Android
  static Future<bool> get developerMode async {
    bool? developerMode = await _channel.invokeMethod<bool>('developerMode');
    return developerMode ?? true;
  }
}
