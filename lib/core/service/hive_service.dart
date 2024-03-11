import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {

  static Box? authBox;

  static init() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    await openBoxes();
  }

  static Future<void> openBoxes() async {
    authBox ??= await Hive.openBox(HiveConstantBox.authBox);
  }

  static Future setAccessToken({required String accessToken}) async {
    await authBox?.put(HiveKeysConstant.accessToken, accessToken);
  }

  static Future setMobileNumber({required String mobileNumber}) async {
    await authBox?.put(HiveKeysConstant.mobileNumber, mobileNumber);
  }

  static Future setUserData({required String userData}) async {
    await authBox?.put(HiveKeysConstant.userData, userData);
  }

  static getMobileNumber() {
    return authBox?.get(HiveKeysConstant.mobileNumber, defaultValue: '');
  }

  static getAccessToken(){
    return authBox?.get(HiveKeysConstant.accessToken, defaultValue: '');
  }

  static getUserData(){
    return authBox?.get(HiveKeysConstant.userData, defaultValue: '');
  }

  static Future closeHive() async {
    await authBox?.close();
  }

  static Future logout() async {
    await authBox?.clear();
  }

}



class HiveConstantBox {
  static const String authBox="authBox";
  static const String locationBox="locationBox";
}

class HiveKeysConstant {
  static const String accessToken="accessToken";
  static const String userData="userData";
  static const String mobileNumber="mobileNumber";
}