import 'package:flutter/material.dart';
import '../../presentation/resources/theme.dart';
import '../../presentation/screens/splash/splash_screen.dart';
import '../../routes/routes.dart';
import '../../routes/routes_name.dart';
import 'package:provider/provider.dart';

import 'domain/viewmodel/auth_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => AuthViewModel()),
    ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Go Dating',
          initialRoute: RoutesName.splash,
          onGenerateRoute: Routes.generateRoute,
          theme: CustomTheme.lightThemeData(context),
          home: const SplashScreen(),
        ));
  }
}
