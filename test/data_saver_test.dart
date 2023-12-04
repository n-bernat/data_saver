import 'package:data_saver/data_saver.dart';
import 'package:data_saver/src/data_saver_method_channel.dart';
import 'package:data_saver/src/data_saver_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDataSaverPlatform
    with MockPlatformInterfaceMixin
    implements DataSaverPlatform {
  @override
  Future<DataSaverMode> checkMode() async => DataSaverMode.enabled;
}

void main() {
  final initialPlatform = DataSaverPlatform.instance;

  test('$MethodChannelDataSaver is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDataSaver>());
  });

  test('checkMode', () async {
    const plugin = DataSaver();
    final platform = MockDataSaverPlatform();
    DataSaverPlatform.instance = platform;

    expect(await plugin.checkMode(), DataSaverMode.enabled);
  });
}
