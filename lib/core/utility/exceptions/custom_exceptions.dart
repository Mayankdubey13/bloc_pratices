

class ApiExceptions implements Exception {
  final String? statusMessage;
  final String? apiError;
  final String? additionalDetails;
  final int? statusCode;
  ApiExceptions({this.apiError, this.additionalDetails, this.statusMessage,this.statusCode});

  @override
  String toString() {
    return 'ApiExceptions: $statusMessage';
  }
}


class StateManagementExceptions implements Exception{
  final String? message;
  final String? apiError;
  final String? additionalDetails;
  StateManagementExceptions({this.apiError, this.additionalDetails, this.message});

  @override
  String toString() {
    return 'StateManagementExceptions: $message';
  }
}
class ApiErrorExceptions implements Exception {
  final String? message;
  final String? apiError;
  final String? additionalDetails;
  ApiErrorExceptions({this.apiError, this.additionalDetails, this.message});

  @override
  String toString() {
    return 'ApiErrorExceptions: $message';
  }
}