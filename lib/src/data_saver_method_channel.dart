import 'package:data_saver/src/data_saver_platform_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

/// An implementation of [DataSaverPlatform] that uses method channels.
class MethodChannelDataSaver extends DataSaverPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('data_saver');

  @override
  Future<DataSaverMode> checkMode() async {
    final mode = await methodChannel.invokeMethod<String>('checkMode');

    return switch (mode) {
      'ENABLED' => DataSaverMode.enabled,
      'WHITELISTED' => DataSaverMode.whitelisted,
      'DISABLED' => DataSaverMode.disabled,
      _ => throw UnsupportedError('Provided data saver mode is not supported.'),
    };
  }
}
