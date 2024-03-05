import 'package:bloc_practices/data/network_services/api_services.dart';
import 'package:bloc_practices/domain/repository/get_respository.dart';
import 'package:dio/dio.dart';

class GetRespositoryImpl extends GetRespository {
  ApiServices apiServices = ApiServices();


  Future<dynamic> getApi({required int page}) async{
    try {
      var response = await apiServices.call( "https://api.punkapi.com/v2/beers",queryParameters: {
        "page":page,
        "per_page":5
      });
      return response;
    }
    catch (e)
    {
      rethrow;
    }

  }
}