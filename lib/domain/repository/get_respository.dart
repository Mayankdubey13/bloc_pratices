import 'package:bloc_practices/data/network_services/api_services.dart';
import 'package:dio/dio.dart';

 abstract class GetRespository {

  Future<dynamic> getApi({required int page});

}