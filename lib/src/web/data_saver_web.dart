import 'package:data_saver/src/data_saver_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart';

/// A web implementation of the DataSaverPlatform of the DataSaver plugin.
class DataSaverWeb extends DataSaverPlatform {
  /// Constructs a [DataSaverWeb] instance.
  DataSaverWeb();

  /// Registers a web plugin.
  static void registerWith(Registrar registrar) {
    DataSaverPlatform.instance = DataSaverWeb();
  }

  /// Check the current data saver mode.
  ///
  /// See [DataSaverMode] for available options.
  @override
  Future<DataSaverMode> checkMode() async {
    try {
      return window.navigator.connection.saveData
          ? DataSaverMode.enabled
          : DataSaverMode.disabled;

      // If a browser throws an error (doesn't support saveData)
      // then fallback to DataSaverMode.disabled.
    } catch (_) {
      return DataSaverMode.disabled;
    }
  }
}
