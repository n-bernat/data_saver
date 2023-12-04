import 'src/data_saver_platform_interface.dart';

export 'src/data_saver_platform_interface.dart' show DataSaverMode;

/// [DataSaver] allows checking the current [DataSaverMode].
class DataSaver {
  /// Constructor for an instance of [DataSaver].
  const DataSaver();

  /// Check the current data saver mode.
  ///
  /// See [DataSaverMode] for available options.
  Future<DataSaverMode> checkMode() {
    return DataSaverPlatform.instance.checkMode();
  }
}
