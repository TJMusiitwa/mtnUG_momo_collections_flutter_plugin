import 'dart:async';

import 'package:flutter/services.dart';

class MtnUgMomoCollectionsPlugin {
  static const MethodChannel _channel =
      const MethodChannel('mtn_ug_momo_collections_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
