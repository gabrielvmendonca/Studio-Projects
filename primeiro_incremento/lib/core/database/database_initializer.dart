import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

Future<void> initializeDatabase() async {
  if (kIsWeb) {
    // Flutter Web
    databaseFactory = databaseFactoryFfiWeb;
  } else if (defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.linux ||
      defaultTargetPlatform == TargetPlatform.macOS) {
    // Windows / Linux / macOS
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
  }

  // Android e iOS não precisam de configuração adicional.
}
