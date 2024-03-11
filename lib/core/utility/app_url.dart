

import 'package:flutter/cupertino.dart';




@immutable
abstract class AppBaseUrl {
  static const String baseUrl = "https://api.comunai.hm.icegrove.sbs";
}

@immutable
abstract class AppEndPoints{

  // -------------- Auth -------------------  //
  static const String getOtp = '/v1/api/auth/users/login/otp';
  static const String verifyOtp = '/v1/api/auth/users/login/otp/verify?testRegistration=0'; // ?testRegistration=0

  // -------------- Diagnosis -------------- //
  static const String searchDiagnosis = '/v1/api/datapoints/diagnosis/paginated';
  static const String saveDiagnosis = '/v1/api/datapoints/diagnosis/save';
  static const String getDiagnosis = '/v1/api/datapoints/diagnosis/user';

  // -------------- Symptoms -------------- //
  static const String searchSymptoms = '/v1/api/datapoints/symptom/paginated';
  static const String saveSymptoms = '/v1/api/datapoints/symptom/save';
  static const String getSymptoms = '/v1/api/datapoints/symptom/user';
}