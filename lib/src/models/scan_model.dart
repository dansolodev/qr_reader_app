import 'dart:convert';

ScanModel scanModelFromJson(String str) => ScanModel.fromJson(json.decode(str));

String scanModelToJson(ScanModel data) => json.encode(data.toJson());

class ScanModel {
  ScanModel({
    required this.id,
    required this.type,
    required this.vale,
  }) {
    if (type.contains('http')) {
      type = 'http';
    } else {
      type = 'geo';
    }
  }

  int id;
  String type;
  String vale;

  factory ScanModel.fromJson(Map<String, dynamic> json) => ScanModel(
        id: json["id"],
        type: json["type"],
        vale: json["vale"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "vale": vale,
      };
}
