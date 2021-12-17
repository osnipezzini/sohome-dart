import 'dart:convert';
import 'dart:io';

import 'package:console_app/models/setting.dart';

class AppSettings {
  static Setting? setting;
  static String configFile = '/Users/osni/settings.db';
  static Setting get Settings {
    if (setting == null) {
      load();
    }
    return setting ??= load() as Setting;
  }

  static Future<Setting?> load() async {
    if (File(configFile).existsSync()) {
      try {
        String json = await File(configFile).readAsString();
        setting = jsonDecode(json);
      } catch (e) {
        print(e);
        setting = Setting();
      }
    } else {
      setting = Setting();
    }
    return setting;
  }

  static Future<void> save() async {
    try {
      String json = jsonEncode(setting);
      await File(configFile).writeAsString(json);
    } catch (e) {
      print(e);
    }
  }
}
