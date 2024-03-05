
import 'package:hive/hive.dart';

part 'savedata.g.dart';

@HiveType(typeId: 0)
class SaveData extends HiveObject{
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? imageUrl;
  @HiveField(3)
  double? ph;
  @HiveField(4)
  String ?description;

  SaveData({required this.id,required this.name,required this.imageUrl,required this.ph,required this.description});
  // Factory method to create SaveData instance from JSON
  factory SaveData.fromJson(Map<String, dynamic> json) {
    return SaveData(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      ph: json['ph'],
      description: json['description'],
    );
  }

  // Method to convert SaveData instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'ph': ph,
      'description': description,
    };
  }

}