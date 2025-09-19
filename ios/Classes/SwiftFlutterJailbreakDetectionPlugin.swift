import Flutter
import UIKit
import IOSSecuritySuite
public class SwiftFlutterJailbreakDetectionPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_jailbreak__root_detection", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterJailbreakDetectionPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "jailbroken":
            
            let check2 = IOSSecuritySuite.amIJailbroken()
            result(check2)
            break
        case "emulatorRun":
            result(IOSSecuritySuite.amIRunInEmulator())
            break
        case "debugMode":
            result(IOSSecuritySuite.amIDebugged())
            break
        default:
            result(FlutterMethodNotImplemented)
        }
  }
}
