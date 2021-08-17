import 'package:fltr_setup/core/common/app_config.dart';
import 'package:fltr_setup/generated/l10n.dart';
import 'package:fltr_setup/locator.dart';
import 'package:fltr_setup/route.dart' as appRoute;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        title: AppConfig.appName,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        locale: Locale(AppConfig.defaultLanguage),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: appRoute.NavigatorRoutes.home,
        onGenerateRoute: appRoute.Router.generateRoute,
      ),
    );
  }
}
