import 'dart:html' as html;

import 'package:data_saver/src/data_saver_platform_interface.dart';
import 'package:data_saver/src/web/save_data.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the DataSaverPlatform of the DataSaver plugin.
class DataSaverWeb extends DataSaverPlatform {
  /// Constructs a DataSaverWeb
  DataSaverWeb();

  /// Registers a
  static void registerWith(Registrar registrar) {
    DataSaverPlatform.instance = DataSaverWeb();
  }

  /// Check the current data saver mode.
  ///
  /// See [DataSaverMode] for available options.
  @override
  Future<DataSaverMode> checkMode() async {
    final connection = html.window.navigator.connection;
    if (connection == null) {
      return DataSaverMode.disabled;
    }

    return JSConnection.saveData ?? false
        ? DataSaverMode.enabled
        : DataSaverMode.disabled;
  }
}
