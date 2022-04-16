import 'dart:convert';

ResumeListingData resumeListingDataFromJson(String str) =>
    ResumeListingData.fromJson(json.decode(str));

String resumeListingDataToJson(ResumeListingData data) =>
    json.encode(data.toJson());

class ResumeListingData {
  ResumeListingData({
    required this.title,
    required this.description,
    required this.location,
    required this.period,
  });

  String title;
  String description;
  String location;
  String period;

  factory ResumeListingData.fromJson(Map<String, dynamic> json) =>
      ResumeListingData(
        title: json["title"],
        description: json["description"],
        location: json["location"],
        period: json["period"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "location": location,
        "period": period,
      };
}
