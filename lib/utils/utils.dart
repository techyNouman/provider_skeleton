import 'dart:io';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:http/http.dart' as http;
import 'package:provider_skeleton/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

displayFlushBar(String message, bool isSuccess, BuildContext context) {
  showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        message: message,
        duration: const Duration(seconds: 5),
        backgroundColor: isSuccess ? Colors.green : Colors.redAccent,
        reverseAnimationCurve: Curves.easeInOut,
        positionOffset: 20,
        icon: isSuccess
            ? const Icon(
                Icons.done,
                size: 28,
                color: Colors.white,
              )
            : const Icon(
                Icons.error,
                size: 28,
                color: Colors.white,
              ),
      )..show(context));
}

displayApiErrorFlushBar(String error, BuildContext context) {
  final String? displayMessage;
  if (error.contains("No Internet Connection")) {
    displayMessage = 'No Internet Connection';
  } else if (error.contains("Timeout")) {
    displayMessage = 'Timeout!';
  } else if (error.contains("html") || error.isEmpty || error.contains('null')) {
    displayMessage = 'Error contacting server! Please contact admin.';
  }
  else {
    // final jsonData = json.decode(error);
    // ErrorResponse errorResponse = ErrorResponse.fromJson(jsonData);
    // displayMessage = errorResponse.response!.message;
    displayMessage = 'Something went wrong please try again later.';
  }
  showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        message: displayMessage,
        duration: const Duration(seconds: 3),
        backgroundColor: Colors.redAccent,
        reverseAnimationCurve: Curves.easeInOut,
        positionOffset: 20,
        icon: const Icon(
          Icons.error,
          size: 28,
          color: Colors.white,
        ),
      )..show(context));
}

displayStaticFlushBar(String message, BuildContext context) {
  showFlushbar(
      context: context,
      flushbar: Flushbar(
        forwardAnimationCurve: Curves.decelerate,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(15),
        message: message,
        duration: const Duration(seconds: 2),
        reverseAnimationCurve: Curves.easeInOut,
        positionOffset: 20,
      )..show(context));
}

displaySnackBar(String message, BuildContext context) {
  return ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(message)));
}

fieldFocusChange(BuildContext context, FocusNode current, FocusNode next) {
  current.unfocus();
  FocusScope.of(context).requestFocus(next);
}

Future<Map<String, String>> getHeadersWithToken() async {
  final SharedPreferences sp = await SharedPreferences.getInstance();
  final String? token = sp.getString(AppConstants.accessToken);

  print("$token");
  Map<String, String> values = {
    "token": "$token",
    "Content-Type": "application/json"
  };
  return values;
}

Future<Map<String, String>> getHeadersWithPdfToken() async {
  final SharedPreferences sp = await SharedPreferences.getInstance();
  final String? token = sp.getString(AppConstants.accessToken);

  print("$token");
  Map<String, String> values = {"header": "$token"};
  return values;
}

Map<String, String> getHeaders() {
  Map<String, String> values = {
    "Content-Type": "application/json",
  };
  return values;
}

Future<String> getToken() async {
  final SharedPreferences sp = await SharedPreferences.getInstance();
  String? token = sp.getString(AppConstants.accessToken);
  token ??= "";
  return token;
}

showLoaderDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    content: Row(
      children: [
        const CircularProgressIndicator(),
        Container(
            margin: const EdgeInsets.only(left: 7),
            child: const Text("Please wait...")),
      ],
    ),
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Future<File> urlToFile(String imageUrl) async {
  final response = await http.get(Uri.parse(imageUrl));
  if (response.statusCode == 200) {
    final bytes = response.bodyBytes;
    final file = File(
        '${Directory.systemTemp.path}/${DateTime.now().millisecondsSinceEpoch}.jpg');
    await file.writeAsBytes(bytes);
    return file;
  } else {
    throw Exception('Failed to download the image');
  }
}

