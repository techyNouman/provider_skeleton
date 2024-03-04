
import 'package:flutter/material.dart';
import 'package:provider_skeleton/routes/routes_name.dart';
import '../presentation/screens/splash/splash_screen.dart';


class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext ctx) => const SplashScreen());
      // case RoutesName.notification:
      //   return MaterialPageRoute(builder: (BuildContext ctx) {
      //     String id = args as String;
      //     return NotificationScreen(id: id);
      //   });
      default:
        MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
    return null;
  }
}
