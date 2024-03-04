import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    // splashServices.checkAuthentication(context);
  }

  @override
  Widget build(BuildContext context) {

    // Timer(const Duration(seconds: 2), () {
    //   Navigator.pushReplacementNamed(context, RoutesName.);
    // });

    return const Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset(
              //   logo,
              //   width: 240,
              //   height: 200,
              //   fit: BoxFit.contain,
              // ),
            ],
          ),
        ));
  }
}
