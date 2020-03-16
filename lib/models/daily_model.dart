// To parse this JSON data, do
//
//     final dailyModel = dailyModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<DailyModel> dailyModelFromJson(String str) => List<DailyModel>.from(json.decode(str).map((x) => DailyModel.fromMap(x)));

String dailyModelToJson(List<DailyModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DailyModel {
    String provinceState;
    String countryRegion;
    DateTime lastUpdate;
    String confirmed;
    String deaths;
    String recovered;

    DailyModel({
        @required this.provinceState,
        @required this.countryRegion,
        @required this.lastUpdate,
        @required this.confirmed,
        @required this.deaths,
        @required this.recovered,
    });

    factory DailyModel.fromMap(Map<String, dynamic> json) => DailyModel(
        provinceState: json["provinceState"] == null ? null : json["provinceState"],
        countryRegion: json["countryRegion"] == null ? null : json["countryRegion"],
        lastUpdate: json["lastUpdate"] == null ? null : DateTime.parse(json["lastUpdate"]),
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
        deaths: json["deaths"] == null ? null : json["deaths"],
        recovered: json["recovered"] == null ? null : json["recovered"],
    );

    Map<String, dynamic> toMap() => {
        "provinceState": provinceState == null ? null : provinceState,
        "countryRegion": countryRegion == null ? null : countryRegion,
        "lastUpdate": lastUpdate == null ? null : lastUpdate.toIso8601String(),
        "confirmed": confirmed == null ? null : confirmed,
        "deaths": deaths == null ? null : deaths,
        "recovered": recovered == null ? null : recovered,
    };
}
