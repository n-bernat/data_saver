import 'package:data_saver/src/data_saver_platform_interface.dart';
import 'package:flutter/services.dart';

export 'src/data_saver_platform_interface.dart' show DataSaverMode;

/// [DataSaver] allows checking the current [DataSaverMode].
class DataSaver {
  /// Constructor for an instance of [DataSaver].
  const DataSaver();

  /// Check the current data saver mode.
  ///
  /// See [DataSaverMode] for available options.
  Future<DataSaverMode> checkMode() async {
    try {
      return await DataSaverPlatform.instance.checkMode();
    } on MissingPluginException {
      // Fallback to `disabled` on unimplemented platforms.
      return DataSaverMode.disabled;
    }
  }
}
