
import 'package:dio/dio.dart';

import '../utility/api_keys.dart';
import 'hive_service.dart';

class CommonHeader {
  static Future<Options> header() async {
    final accessToken = await HiveService.getAccessToken();
    return Options(
      headers: {
        HeaderConstants.authorization : '${HeaderConstants.bearer}$accessToken',
      },
      contentType: HeaderConstants.applicationJson
    );
  }
}