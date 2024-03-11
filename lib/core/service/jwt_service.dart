
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'hive_service.dart';

class JwtDecodeService {

  static Map<String, dynamic> decodeToken({required String yourToken}){
    Map<String, dynamic> decodedToken = JwtDecoder.decode(yourToken);
    return decodedToken;
  }

  /// It will save token as well as sub in hive
  static Future decodeAndSave({required String yourToken}) async {
    final data = decodeToken(yourToken: yourToken);
    await HiveService.init();
    try{
      debugPrint("Data received after decoding Data: $data");
      await HiveService.setAccessToken(accessToken: yourToken);
      await HiveService.setUserData(userData: jsonEncode(data));
    }
    catch (e){
      debugPrint("Error while parsing the token, are getting the sub in the jwt_decoder file Error $e");
    }

  }


}