import 'dart:convert';

ProjectData projectDataFromJson(String str) => ProjectData.fromJson(json.decode(str));

String projectDataToJson(ProjectData data) => json.encode(data.toJson());

class ProjectData {
  ProjectData({
    required this.title,
    required this.description,
    required this.image,
  });

  String title;
  String description;
  String image;

  factory ProjectData.fromJson(Map<String, dynamic> json) => ProjectData(
    title: json["title"],
    description: json["description"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "image": image,
  };
}
