import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_exceptions.dart';

class ApiServices   {
  Dio dio = Dio();
  Future call(String url,{Map<String,dynamic> ?queryParameters}) async{
    List<dynamic>? res;
   // dio.interceptors.add(PrettyDioLogger());
    try {
      Response response = await dio.get(url,queryParameters: queryParameters);
       res = returnResponse(response);
      // debugPrint("Data is $res");
    }
    on DioException catch(err){
      if(err.type == DioExceptionType.connectionError ||err.type == DioExceptionType.connectionTimeout){
        throw "Unable to fetch data";
      }
    }
    catch(err){
      debugPrint("Fetch Error");
      rethrow;
    }
    return res;
  }
  dynamic returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 400:
        debugPrint("Going to fetch Data 400");
        throw InvalidUrl(jsonDecode(response.data)['message']);
      case 500:
        debugPrint("Going to fetch Data 500");
        throw InternalServerException(jsonDecode(response.data)['message']);
      default:
        debugPrint("Going to fetch Data UnKnown");
        throw FetchDataException(jsonDecode(response.data)['message']);
    }
  }
}