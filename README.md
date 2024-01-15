# data_saver

[![Package](https://img.shields.io/pub/v/data_saver.svg)](https://pub.dev/packages/data_saver) [![Publisher](https://img.shields.io/pub/publisher/data_saver.svg)](https://pub.dev/packages/data_saver/publisher) [![MIT License](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

`data_saver` provides a simple way of checking the current [Data Saver](https://source.android.com/docs/core/data/data-saver) (Android) / [Low Data Mode](https://developer.apple.com/documentation/foundation/nsurlsessionconfiguration/3235751-allowsconstrainednetworkaccess) (iOS).

|                                                                                                       Status                                                                                                       |               Comments               |
| :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :----------------------------------: |
| [![data_saver - Tests (stable)](https://github.com/n-bernat/data_saver/actions/workflows/flutter_tests_stable.yaml/badge.svg)](https://github.com/n-bernat/data_saver/actions/workflows/flutter_tests_stable.yaml) |    Current stable Flutter version    |
|    [![data_saver - Tests (beta)](https://github.com/n-bernat/data_saver/actions/workflows/flutter_tests_beta.yaml/badge.svg)](https://github.com/n-bernat/data_saver/actions/workflows/flutter_tests_beta.yaml)    |     Current beta Flutter version     |
|    [![data_saver - Tests (3.13.0)](https://github.com/n-bernat/data_saver/actions/workflows/flutter_tests_min.yaml/badge.svg)](https://github.com/n-bernat/data_saver/actions/workflows/flutter_tests_min.yaml)    | The oldest supported Flutter version |

## Getting started

1. Add this package to your dependencies.

```yaml
dependencies:
  data_saver: latest_version
```

2. Get the dependencies.

```sh
flutter pub get
```

## Usage

```dart
const dataSaver = DataSaver();

// Mode is one of the following values:
// - enabled
// - whitelisted (Android-only)
// - disabled
final mode = await dataSaver.checkMode();
```

## Additional information

- This package requires at least Flutter 3.13 to work.
- If there are any issues feel free to go to [GitHub Issues](https://github.com/n-bernat/data_saver/issues) and report a bug.

## Maintainers

- [Nikodem Bernat](https://nikodembernat.com)
