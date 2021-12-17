import 'package:console_app/utils.dart';
import 'package:console_app/app_settings.dart';

void main(List<String> arguments) {
  var setting = AppSettings.Settings;
  print(setting.database.host);
  print('Hello world: ${getMessage()}!');
}
