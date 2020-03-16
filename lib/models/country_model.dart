// To parse this JSON data, do
//
//     final countryModel = countryModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CountryModel countryModelFromJson(String str) => CountryModel.fromMap(json.decode(str));

String countryModelToJson(CountryModel data) => json.encode(data.toMap());

class CountryModel {
    Map<String, String> countries;
    Map<String, String> iso3;

    CountryModel({
        @required this.countries,
        @required this.iso3,
    });

    factory CountryModel.fromMap(Map<String, dynamic> json) => CountryModel(
        countries: json["countries"] == null ? null : Map.from(json["countries"]).map((k, v) => MapEntry<String, String>(k, v)),
        iso3: json["iso3"] == null ? null : Map.from(json["iso3"]).map((k, v) => MapEntry<String, String>(k, v)),
    );

    Map<String, dynamic> toMap() => {
        "countries": countries == null ? null : Map.from(countries).map((k, v) => MapEntry<String, dynamic>(k, v)),
        "iso3": iso3 == null ? null : Map.from(iso3).map((k, v) => MapEntry<String, dynamic>(k, v)),
    };
}
