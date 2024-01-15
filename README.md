# data_saver

[![Package](https://img.shields.io/pub/v/data_saver.svg)](https://pub.dev/packages/data_saver) [![Publisher](https://img.shields.io/pub/publisher/data_saver.svg)](https://pub.dev/packages/data_saver/publisher) [![data_saver - Checks](https://github.com/n-bernat/data_saver/actions/workflows/flutter_checks.yaml/badge.svg)](https://github.com/n-bernat/data_saver/actions/workflows/flutter_checks.yaml) [![MIT License](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

`data_saver` provides a simple way of checking the current Data Saver (Android) / Low Data Mode (iOS).

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
