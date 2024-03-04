import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../repository/auth_repository.dart';

class AuthViewModel with ChangeNotifier {
  final _repo = AuthRepository();

  bool _loading = false;

  bool get loading => _loading;

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  // Future<void> sendOtp(BuildContext context, dynamic data) async {
  //   setLoading(true);
  //   _repo.sendOtp(data).then((value) {
  //     setLoading(false);
  //     Navigator.pushNamed(context, RoutesName.otp, arguments: value.record!.id);
  //     displayFlushBar(
  //         "${value.message!} OTP is - ${value.record!.code.toString()}",
  //         true,
  //         context);
  //
  //     if (kDebugMode) {
  //       print("login--> ${value}");
  //     }
  //   }).onError((error, stackTrace) {
  //     setLoading(false);
  //     displayApiErrorFlushBar(error.toString(), context);
  //     if (kDebugMode) {
  //       print(error.toString());
  //     }
  //   });
  // }

}
