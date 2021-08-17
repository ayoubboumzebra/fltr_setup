import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class RegisterModule {
  @singleton
  http.Client get client => http.Client();

  @singleton
  String get name => 'Ayoub';

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
