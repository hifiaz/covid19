// To parse this JSON data, do
//
//     final detailCountry = detailCountryFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

DetailCountry detailCountryFromJson(String str) => DetailCountry.fromMap(json.decode(str));

String detailCountryToJson(DetailCountry data) => json.encode(data.toMap());

class DetailCountry {
    Confirmed confirmed;
    Confirmed recovered;
    Confirmed deaths;
    DateTime lastUpdate;

    DetailCountry({
        @required this.confirmed,
        @required this.recovered,
        @required this.deaths,
        @required this.lastUpdate,
    });

    factory DetailCountry.fromMap(Map<String, dynamic> json) => DetailCountry(
        confirmed: json["confirmed"] == null ? null : Confirmed.fromMap(json["confirmed"]),
        recovered: json["recovered"] == null ? null : Confirmed.fromMap(json["recovered"]),
        deaths: json["deaths"] == null ? null : Confirmed.fromMap(json["deaths"]),
        lastUpdate: json["lastUpdate"] == null ? null : DateTime.parse(json["lastUpdate"]),
    );

    Map<String, dynamic> toMap() => {
        "confirmed": confirmed == null ? null : confirmed.toMap(),
        "recovered": recovered == null ? null : recovered.toMap(),
        "deaths": deaths == null ? null : deaths.toMap(),
        "lastUpdate": lastUpdate == null ? null : lastUpdate.toIso8601String(),
    };
}

class Confirmed {
    int value;
    String detail;

    Confirmed({
        @required this.value,
        @required this.detail,
    });

    factory Confirmed.fromMap(Map<String, dynamic> json) => Confirmed(
        value: json["value"] == null ? null : json["value"],
        detail: json["detail"] == null ? null : json["detail"],
    );

    Map<String, dynamic> toMap() => {
        "value": value == null ? null : value,
        "detail": detail == null ? null : detail,
    };
}
