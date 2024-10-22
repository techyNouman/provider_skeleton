import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../../../presentation/screens/splash/user_model.dart';

import '../../../domain/viewmodel/user_view_model.dart';

class SplashServices {
  Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthentication(BuildContext context) async {
    getUserData().then((value) async {
      // if (value.token == null || value.token == '' || value.token == 'null' && value.userExists == false) {
      //   await Future.delayed(const Duration(seconds: 2));
      //   Navigator.pushReplacementNamed(context, RoutesName.onboarding);
      // }
      // else {
      //   await Future.delayed(const Duration(seconds: 2));
      //   Navigator.pushReplacementNamed(context, RoutesName.onboarding);
      // }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  String? getToken(BuildContext context) {
    String? token;
    getUserData().then((value) async {
      if (value.token == null || value.token == '' || value.token == 'null') {
        token = value.token;
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
    return token;
  }

  String? getLoginId(BuildContext context) {
    String? id;
    getUserData().then((value) async {
        id = value.id;
        print(id);
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
    return id;
  }
}
