import 'package:flutter/material.dart';

class UserDataModel {
  int? id;
  String? name;
  String? imageUrl;
  double? ph;
  String ?description;

  UserDataModel({this.id, this.name, this.imageUrl, this.ph,this.description});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    ph = json['ph']?.toDouble();
    description=json["description"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image_url'] = this.imageUrl;
    data['ph'] = this.ph;
    data["description"]=this.description;
    return data;
  }
}
