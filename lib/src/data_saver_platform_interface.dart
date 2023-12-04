import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'data_saver_method_channel.dart';

/// Current data saver policy.
/// https://developer.android.com/training/basics/network-ops/data-saver#status
enum DataSaverMode {
  /// The user has enabled Data Saver for this app.
  /// Apps should make an effort to limit data usage in the foreground
  /// and gracefully handle restrictions to background data usage.
  enabled,

  /// Android-only.
  /// The user has enabled Data Saver but the app is allowed to bypass it.
  /// Apps should still make an effort to limit foreground and background data usage.
  whitelisted,

  /// Data Saver is disabled.
  disabled,
}

/// Platform interface for data saver.
abstract class DataSaverPlatform extends PlatformInterface {
  /// Constructs a DataSaverPlatform.
  DataSaverPlatform() : super(token: _token);

  static final Object _token = Object();

  static DataSaverPlatform _instance = MethodChannelDataSaver();

  /// The default instance of [DataSaverPlatform] to use.
  ///
  /// Defaults to [MethodChannelDataSaver].
  static DataSaverPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DataSaverPlatform] when
  /// they register themselves.
  static set instance(DataSaverPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Check the current data saver mode.
  ///
  /// See [DataSaverMode] for available options.
  Future<DataSaverMode> checkMode();
}
