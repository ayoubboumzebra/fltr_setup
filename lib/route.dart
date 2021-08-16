import 'package:fltr_setup/views/home/home.dart';
import 'package:flutter/material.dart';

class NavigatorRoutes {
  static const String home = '/homegPage';
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigatorRoutes.home:
        return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return _errorRoute(settings);
    }
  }

  static Route<dynamic> _errorRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
    });
  }
}
