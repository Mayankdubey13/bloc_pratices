

import 'package:flutter/cupertino.dart';


class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix $_message";
  }
}


class InvalidUrl extends AppException {
  InvalidUrl([String? message]) :
        super(message, "Invalid Url");

}



class FetchDataException extends AppException {
  FetchDataException([String? message]) :
        super(message, "Error Occured");

}


class InternalServerException extends AppException {
  InternalServerException([String? message]) :
        super(message, " error Login");

}

