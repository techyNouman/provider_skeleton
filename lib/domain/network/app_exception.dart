
class AppException implements Exception {

  final _message;
  // final _prefix;

  AppException([this._message]);

  String toString(){
    return '$_message';
  }

}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message);
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message]) : super(message);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(message);
}

class InvalidUrlException extends AppException {
  InvalidUrlException([String? message]) : super(message);
}

class ApiException extends AppException {
  ApiException([String? message]) : super(message);
}

class NoInternetException extends AppException {
  NoInternetException([String? message]) : super(message);
}