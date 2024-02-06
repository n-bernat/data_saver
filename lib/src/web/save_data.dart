// ignore_for_file: public_member_api_docs

@JS()
library savedata_interop;

import 'package:js/js.dart';

@JS('navigator.connection')
class JSConnection {
  external static bool? saveData;
}
