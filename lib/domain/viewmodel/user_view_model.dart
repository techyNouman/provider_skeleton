
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../presentation/screens/splash/user_model.dart';
import '../../utils/app_constants.dart';

class UserViewModel with ChangeNotifier{


  Future<bool> saveUser(UserModel user) async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(AppConstants.accessToken, user.token.toString());
    notifyListeners();
    return true;
  }

  Future<UserModel> getUser() async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? token = sp.getString(AppConstants.accessToken);
    notifyListeners();
    return UserModel(
      id: "",
      token: token,
      userExists: false,
    );
  }

  Future<bool> remove() async{
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove(AppConstants.accessToken);
    return true;
  }
}