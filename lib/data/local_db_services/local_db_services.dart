import 'package:hive/hive.dart';

import '../../domain/models/savedata.dart';

class Boxes{

  static Box<List<SaveData>>getData()=> Hive.box<List<SaveData>>("savedatas");
  static Future<void> deleteData(int index) async {
    final box = getData();
    await box.deleteAt(index); // Delete the data at the specified index
  }


}