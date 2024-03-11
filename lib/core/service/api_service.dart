
import 'dart:async';
import 'dart:developer';
import 'package:dio/dio.dart';
import '../../../core/utility/app_url.dart';

class ApiService {
  static ApiService? _instance;
  factory ApiService() => _instance ??= ApiService._();
  ApiService._();
  Dio get dio => _dio();

  Dio _dio() {
    final options = BaseOptions(
      baseUrl: AppBaseUrl.baseUrl,
      connectTimeout: const Duration(minutes: 5),
      receiveTimeout: const Duration(minutes: 5),
    );

    var dio = Dio(options);

    dio.interceptors.add(requestInterceptor(dio));
    return dio;
  }
}

InterceptorsWrapper requestInterceptor(Dio dio) => InterceptorsWrapper(onRequest: (RequestOptions options, RequestInterceptorHandler requestHandler) {
  final uri = options.uri.toString();
  log("Api - URL: ${uri.toString()}");
  log("Api - Request Body: ${options.data}");
  log("Api - Request header: ${options.headers}");
  log("Api - Response Type: ${options.responseType}");
  log("Api - Path: ${options.path}");
  log("Api - Query Parameters: ${options.queryParameters}");
  return requestHandler.next(options);
}, onResponse: (Response<dynamic> response,
    ResponseInterceptorHandler requestHandler) {
  log("Api - Response: ${response.data}");
  log("Api - Response statusCode: ${response.statusCode}");
  log("Api - Response status message: ${response.statusMessage}");
  return requestHandler.next(response);
});

dynamic responseInterceptor(Response options) async {
  return options;
}

dynamic errorInterceptor(DioException dioError) {
  return dioError;
}

class AppInterceptors extends Interceptor {
  @override
  FutureOr<dynamic> onRequest(RequestOptions options, _) async {
    return options;
  }

  @override
  FutureOr<dynamic> onError(DioException dioError, handler) {
    return dioError;
  }

  @override
  FutureOr<dynamic> onResponse(Response options, handler) async {
    return options;
  }
}
