# flutter_jailbreak__root_detection

Flutter jailbreak and root detection plugin.

It uses [RootBeer](https://github.com/scottyab/rootbeer) on Android,
and [IOSSecuritySuite](https://github.com/securing/IOSSecuritySuite) on iOS.

## Getting Started

```
import 'package:flutter_jailbreak__root_detection/flutter_jailbreak__root_detection.dart';

bool jailbroken = await FlutterJailbreakDetection.jailbroken;
bool developerMode = await FlutterJailbreakDetection.developerMode; // android only.

```
